import 'dart:math' as math;

import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class WindSpeedView extends StatelessWidget {
  const WindSpeedView({
    super.key,
    required this.windSpeed_10m,
    required this.windDirection_10m,
  });
  final String windSpeed_10m;
  final int windDirection_10m;
  @override
  Widget build(BuildContext context) {
    const String title = 'Wind';
    const IconData iconData = Symbols.air_sharp;
    final Widget child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: windDirection_10m * math.pi / 180,
          child: Icon(
            Icons.arrow_forward_rounded,
            color: Theme.of(context).colorScheme.secondaryFixedDim,
          ),
        ),
        const SizedBox(width: 2),
        Text(
          '$windSpeed_10m km/h',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim),
        )
      ],
    );
    return SharedSmallWidget(
      title: title,
      iconData: iconData,
      child: child,
    );
  }
}
