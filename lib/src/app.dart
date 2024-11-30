import 'package:flutter/material.dart';
import 'package:zaracast/src/core/router/build_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: buildRouter(),
        title: 'ZaraCast',
      ),
    );
  }
}
