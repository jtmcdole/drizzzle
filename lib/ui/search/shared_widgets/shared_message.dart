import 'package:flutter/material.dart';

List<Widget> sharedMessage(BuildContext context, IconData iconData, String msg,
    [double? fill]) {
  final textTheme = Theme.of(context).textTheme;
  final colorScheme = Theme.of(context).colorScheme;
  final height = MediaQuery.of(context).size.height;
  return [
    SizedBox(height: height / 4 + height / 32),
    Icon(
      iconData,
      weight: 500,
      size: 128,
      color: colorScheme.secondary,
      fill: fill,
    ),
    const SizedBox(height: 16.0),
    Text(msg,
        textAlign: TextAlign.center,
        style:
            textTheme.bodyLarge!.copyWith(color: colorScheme.onSurfaceVariant)),
  ];
}
