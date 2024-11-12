import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/core/router/stateful_shell_scaffold.dart';
import 'package:zaracast/src/features/my_episodes/my_episodes_page.dart';
import 'package:zaracast/src/features/library/my_library_page.dart';
import 'package:zaracast/src/features/queue/queue_page.dart';
import 'package:zaracast/src/features/settings/settings_page.dart';
import 'package:zaracast/src/features/show_details/show_home_page.dart';
import 'package:zaracast/src/features/my_shows/my_shows_page.dart';

GoRouter buildRouter() {
  print('BUILD GO ROUTER');
  int getIntFromParam(String? key, {int defaultValue = 0}) {
    if (key == null) return defaultValue;

    return int.tryParse(key) ?? defaultValue;
  }

/*
  String? getStringFromExtra(Object? extra, String key) {
    if (extra == null) return null;

    if (extra is Map<String, dynamic>) {
      return extra[key] as String?;
    } else {
      return null;
    }
  }
*/
  return GoRouter(
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: const Scaffold(body: Center(child: Text('404'))),
    ),
    initialLocation: '/library',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => StatefulShellScaffold(child),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            // Setting this will navigate the user back to /library if they
            // tap the bottom nav Library icon while deep in the library routes.
            initialLocation: '/library',
            routes: <RouteBase>[
              GoRoute(
                path: '/library',
                builder: (context, state) => const LibraryPage(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'episodes',
                    builder: (context, state) => const EpisodesPage(),
                  ),
                ],
              ),
              GoRoute(
                path: '/shows',
                builder: (context, state) => const MyShowsPage(),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      final id = getIntFromParam(state.pathParameters['id']);
                      return ShowHomePage(id);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: '/episodes',
                builder: (context, state) => const EpisodesPage(),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) {
                      final id = getIntFromParam(state.pathParameters['id']);
                      return ShowHomePage(id);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            // Setting this will navigate the user back to /queue if they
            // tap the bottom nav Queue icon while deep in the queue routes.
            initialLocation: '/queue',
            routes: <RouteBase>[
              GoRoute(
                path: '/queue',
                builder: (context, state) => const QueuePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            // Setting this will navigate the user back to /settings if they
            // tap the bottom nav Settings icon while deep in the settings
            // routes.
            initialLocation: '/settings',
            routes: <RouteBase>[
              GoRoute(
                path: '/settings',
                builder: (context, state) => const SettingsPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
