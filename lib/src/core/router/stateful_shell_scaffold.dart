import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class StatefulShellScaffold extends StatelessWidget {
  const StatefulShellScaffold(this.child, {super.key});

  final StatefulNavigationShell child;

  void _onTap(int index) {
    print(
        'nav to stateful branch $index initialLocation ${child.currentIndex}');

    child.goBranch(index, initialLocation: index == child.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: child.currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurfaceVariant,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts_rounded),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_to_queue_rounded),
            label: 'Queue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
        // ignore: unnecessary_lambdas
        onTap: (value) => _onTap(value),
      ),
      bottomSheet: BottomSheet(
        builder: (context) {
          return SizedBox(
            height: 80,
            child: Column(
              children: [
                const LinearProgressIndicator(value: .33),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 56,
                        width: 56,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: const CachedNetworkImageBuilder(
                            image: 'https://darknetdiaries.com/imgs/shark.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'This Is The Episode With A Really Long Title That Should Get Truncated At Some Point',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    height: 1.2,
                                    letterSpacing: -0.2,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.replay_10_rounded),
                            onPressed: () => print('skip back'),
                            padding: EdgeInsets.zero,
                          ),
                          IconButton(
                            icon: Icon(Icons.play_arrow_rounded),
                            onPressed: () => print('skip back'),
                            padding: EdgeInsets.zero,
                            iconSize: 32,
                          ),
                          IconButton(
                            icon: Icon(Icons.forward_30_rounded),
                            onPressed: () => print('skip back'),
                            padding: EdgeInsets.zero,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        onClosing: () => print('close bottomsheet'),
        shape: LinearBorder.top(),
      ),
      // Allows scrolling to the end of lists when the keyboard (or other
      // floating widgets) may otherwise cover them.
      resizeToAvoidBottomInset: true,
    );
  }
}
