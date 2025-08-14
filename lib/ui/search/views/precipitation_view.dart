import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class PrecipitationView extends StatelessWidget {
  const PrecipitationView({super.key, required this.currentPrecipitation});
  final String currentPrecipitation;
  @override
  Widget build(BuildContext context) {
    const String title = 'Precipitation';
    const IconData iconData = Symbols.beach_access_sharp;
    final textTheme = Theme.of(context).textTheme;
    final child = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$currentPrecipitation mm',
          style: textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim,
              fontWeight: FontWeight.bold),
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
