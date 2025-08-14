import 'package:flutter/material.dart';

class SharedTitle extends StatelessWidget {
  const SharedTitle({
    super.key,
    required this.title,
    this.iconData,
  });
  final IconData? iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (iconData != null) ...[
          Icon(
            iconData!,
            color: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4)
        ],
        Text(
          title,
          style: textTheme.headlineSmall!.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
