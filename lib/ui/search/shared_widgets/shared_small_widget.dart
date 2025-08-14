import 'package:drizzzle/ui/search/shared_widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SharedSmallWidget extends StatelessWidget {
  const SharedSmallWidget(
      {super.key,
      required this.title,
      required this.child,
      required this.iconData});
  final IconData iconData;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return CustomCard(
      color: colorScheme.surfaceContainer,
      radius: 24,
      horizontal: 12,
      vertical: 12,
      child: SizedBox(
        height: 132,
        child: Stack(
          children: [
            Transform.translate(
              offset: const Offset(-42, -32),
              child: Icon(
                iconData,
                size: 152,
                color: colorScheme.surfaceContainerHighest.withAlpha(125),
                //fill: 1.0,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                softWrap: true,
                style: textTheme.titleLarge!
                    .copyWith(color: colorScheme.onSurfaceVariant),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
