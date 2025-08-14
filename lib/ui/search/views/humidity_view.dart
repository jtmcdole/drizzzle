import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HumidityView extends StatelessWidget {
  const HumidityView({super.key, required this.currentRelativeHumidity});
  final String currentRelativeHumidity;
  @override
  Widget build(BuildContext context) {
    const String title = 'Humidity';
    const IconData iconData = Symbols.humidity_percentage_sharp;
    final Widget child = Text(
      '$currentRelativeHumidity%',
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim,
              fontWeight: FontWeight.bold),
    );
    return SharedSmallWidget(
      title: title,
      iconData: iconData,
      child: child,
    );
  }
}
