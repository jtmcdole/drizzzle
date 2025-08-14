import 'package:drizzzle/ui/search/shared_widgets/shared_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CloudCoverView extends StatelessWidget {
  const CloudCoverView({
    super.key,
    required this.currentCloudCover,
  });
  final String currentCloudCover;
  @override
  Widget build(BuildContext context) {
    const String title = 'Cloud coverage';
    const IconData iconData = Symbols.foggy_sharp;
    final Widget child = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$currentCloudCover%',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixedDim,
              fontWeight: FontWeight.bold),
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
