import 'package:flutter/material.dart';

Column sharedMessage(BuildContext context, IconData iconData, String msg,
    [double? fill]) {
  final textTheme = Theme.of(context).textTheme;
  final colorScheme = Theme.of(context).colorScheme;
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
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
          style: textTheme.headlineSmall!
              .copyWith(color: colorScheme.onSurfaceVariant.withAlpha(125))),
    ],
  );
}
