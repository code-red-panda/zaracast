import 'package:flutter/material.dart';

class MyProvider<T extends Listenable> extends InheritedNotifier<T> {
  const MyProvider({
    required super.notifier,
    required super.child,
    super.key,
  });

  static T of<T extends Listenable>(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<MyProvider<T>>();

    if (provider == null) {
      throw Exception("No Provider found in context");
    }

    final notifier = provider.notifier;

    if (notifier == null) {
      throw Exception("No notifier found in Provider");
    }

    return notifier;
  }
}
