import 'package:flutter/material.dart';
import 'package:zaracast/src/core/service_locator.dart';
import 'package:zaracast/src/features/search/search_list_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = SearchController();
  final _textController = TextEditingController();

  List<Feed> _searchResults = [];

  @override
  void dispose() {
    _searchController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(title: Text('Search')),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: SearchBar(
                controller: _textController,
                trailing: [
                  IconButton(
                      onPressed: () async {
                        try {
                          final response = await api.searchPodcasts(_textController.text);
                          setState(() {
                            _searchResults = response.feeds;
                          });
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Search failed: $e')),
                            );
                          }
                        }
                      },
                      icon: Icon(Icons.search_rounded))
                ],
              ),
            ),
          ),
          SliverList.separated(
            itemCount: _searchResults.length,
            separatorBuilder: (context, index) =>
                const Divider(indent: 16, endIndent: 16),
            itemBuilder: (context, index) {
              final feed = _searchResults[index];
              return SearchListTile(
                feed.title,
                feed.image,
                subtitle: feed.author,
              );
            },
          ),
        ],
      ),
    );
  }
}
