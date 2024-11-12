import 'package:flutter/material.dart';

Future<T?> showSettingsBottomSheet<T>(
  BuildContext context, {
  required String title,
  required List<SettingsOption> options,
}) {
  final mappedOptions = options
      .map(
        (o) => InkWell(
          onTap: () => Navigator.of(context).pop(o.popValue),
          child: ListTile(
            leading: Icon(o.icon),
            title: Text(o.text),
          ),
        ),
      )
      .toList();

  return showModalBottomSheet<T>(
    context: context,
    enableDrag: false,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Divider(indent: 16, endIndent: 16),
          ...mappedOptions,
          const SizedBox(height: 32),
        ],
      );
    },
  );
}

class SettingsOption {
  const SettingsOption({
    required this.icon,
    required this.popValue,
    required this.text,
  });

  final IconData icon;
  final dynamic popValue;
  final String text;
}
