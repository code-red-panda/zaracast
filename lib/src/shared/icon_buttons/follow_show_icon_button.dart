import 'package:flutter/material.dart';
import 'package:zaracast/src/core/service_locator.dart';

class FollowShowIconButton extends StatefulWidget {
  const FollowShowIconButton(this.showId, {super.key});

  final int showId;

  @override
  State<FollowShowIconButton> createState() => _FollowShowIconButtonState();
}

class _FollowShowIconButtonState extends State<FollowShowIconButton> {
  bool _isFollowed = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkIfFollowed();
  }

  Future<void> _checkIfFollowed() async {
    final isFollowed = await db.isShowFollowed(widget.showId);
    setState(() {
      _isFollowed = isFollowed;
    });
  }

  Future<void> _followShow() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // Get show details and episodes
      final feedResponse = await api.getFeedById(widget.showId);
      final episodeResponse = await api.getEpisodesByFeedId(
        widget.showId,
        max: 1000,
      );

      // Insert show into database
      await db.insertShow(ShowsCompanion.insert(
        id: Value(feedResponse.feed.id),
        name: feedResponse.feed.title,
        image: feedResponse.feed.image,
        author: feedResponse.feed.author,
        description: feedResponse.feed.description,
        lastUpdateTime: feedResponse.feed.lastUpdateTime,
        episodeCount: feedResponse.feed.episodeCount,
        url: feedResponse.feed.url,
        link: feedResponse.feed.link,
        artwork: feedResponse.feed.artwork,
      ));

      // Insert episodes into database
      await db.insertEpisodes(
        episodeResponse.items.map((item) => EpisodesCompanion.insert(
          id: Value(item.id),
          title: item.title,
          description: item.description,
          image: item.image,
          duration: item.duration,
          datePublished: item.datePublished,
          link: item.link,
          showId: feedResponse.feed.id,
        )).toList(),
      );

      // Mark show as followed
      await db.followShow(widget.showId);

      setState(() {
        _isFollowed = true;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Show followed')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to follow show: $e')),
        );
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return IconButton(
      icon: Icon(
        _isFollowed ? Icons.library_add_check : Icons.library_add_outlined,
      ),
      onPressed: _isFollowed ? null : _followShow,
      visualDensity: VisualDensity.compact,
    );
  }
}
