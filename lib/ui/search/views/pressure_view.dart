import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:flutter/material.dart';

class PressureView extends StatelessWidget {
  const PressureView({super.key, required this.currentSurfacePressure});
  final String currentSurfacePressure;
  @override
  Widget build(BuildContext context) {
    const String title = 'Surface pressure';
    const IconData iconData = Icons.compress_sharp;
    final child = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$currentSurfacePressure mb',
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
