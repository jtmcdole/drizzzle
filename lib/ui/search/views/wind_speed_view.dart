import 'dart:math' as math;

import 'package:drizzzle/ui/home/view_models/unit_view_model.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:drizzzle/utils/converter_functions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

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
    final UnitViewModel unitViewModel = Provider.of<UnitViewModel>(context);

    final isKmh = unitViewModel.isKmh ? 'km/h' : 'mph';
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
          '${isKmh == 'km/h' ? windSpeed_10m : kmToMile(windSpeed_10m)} $isKmh',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Theme.of(context).colorScheme.secondaryFixedDim),
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
