import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:drizzzle/utils/converter_functions.dart';
import 'package:flutter/material.dart';

class UvIndexView extends StatelessWidget {
  const UvIndexView({super.key, required this.aqUvIndex});
  final String aqUvIndex;
  @override
  Widget build(BuildContext context) {
    const String title = 'UV index';
    const IconData iconData = Icons.flare_outlined;
    final textTheme = Theme.of(context).textTheme;
    final String uvIndexDescription =
        uvIndexToDescription(int.parse(aqUvIndex));
    final child = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          aqUvIndex,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim),
        ),
        const SizedBox(height: 2),
        Text(
          uvIndexDescription,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim),
        ),
      ],
    );
    return SharedSmallWidget(
      title: title,
      iconData: iconData,
      child: child,
    );
  }
}
