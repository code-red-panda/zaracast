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

  var names = [];
  var images = [];

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
                        final r =
                            await api.searchPodcasts(_textController.text);

                        var newNames = [];
                        var newImages = [];

                        for (var a in r['feeds'] as List) {
                          newNames.add(a['title']);
                          newImages.add(a['image']);
                        }

                        //print(r);

                        setState(() {
                          names = newNames;
                          images = newImages;
                        });
                      },
                      icon: Icon(Icons.search_rounded))
                ],
              ),
            ),
          ),
          SliverList.separated(
            itemCount: names.length,
            separatorBuilder: (context, index) =>
                Divider(indent: 16, endIndent: 16),
            itemBuilder: (context, index) {
              return SearchListTile(
                  names[index] as String, images[index] as String);
            },
          ),
        ],
      ),
    );
  }
}
