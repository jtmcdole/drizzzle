import 'package:drizzzle/ui/search/shared_widgets/custom_card.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_title.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ParticlesView extends StatelessWidget {
  const ParticlesView(
      {super.key,
      required this.aqdust,
      required this.aqozone,
      required this.aqSulphure,
      required this.aqNitrogen,
      required this.aqCarbon,
      required this.aqPm2_5,
      required this.aqPm10});
  final String aqdust;
  final String aqozone;
  final String aqSulphure;
  final String aqNitrogen;
  final String aqCarbon;
  final String aqPm2_5;
  final String aqPm10;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CustomCard(
      color: colorScheme.surfaceContainer,
      radius: 24,
      horizontal: 12,
      vertical: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SharedTitle(
              title: 'Particles', iconData: Symbols.allergy_rounded),
          const SizedBox(height: 4),
          Divider(color: colorScheme.onSurfaceVariant.withAlpha(125)),
          const SizedBox(height: 4),
          _ParticleInformation(title: 'Dust', data: aqdust, top: true),
          _ParticleInformation(title: 'Ozone', data: aqozone),
          _ParticleInformation(title: 'Carbon monoxide', data: aqCarbon),
          _ParticleInformation(title: 'Amonia', data: aqNitrogen),
          _ParticleInformation(title: 'Sulphur dioxide', data: aqSulphure),
          _ParticleInformation(title: 'PM 2.5', data: aqPm2_5),
          _ParticleInformation(title: 'PM 10', data: aqPm10, top: false),
        ],
      ),
    );
  }
}

class _ParticleInformation extends StatelessWidget {
  const _ParticleInformation({required this.title, required this.data, this.top});
  final String title;
  final String data;
  final bool? top;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    late BorderRadiusGeometry borderRadius;
    const radius = Radius.circular(16);
    const commonRadius = Radius.circular(4);
    switch (top) {
      case null:
        borderRadius = const BorderRadius.all(commonRadius);
      case true:
        borderRadius = const BorderRadius.only(
          topLeft: radius,
          topRight: radius,
          bottomLeft: commonRadius,
          bottomRight: commonRadius,
        );
      case false:
        borderRadius = const BorderRadius.only(
          topLeft: commonRadius,
          topRight: commonRadius,
          bottomRight: radius,
          bottomLeft: radius,
        );
    }

    return Card.filled(
      margin: EdgeInsets.only(bottom: (top == null || top == true) ? 2 : 0),
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      color: colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              title,
              style: textTheme.bodyLarge!.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            )),
            Expanded(
              child: Text(
                '$data \u03bcg/m\u00B3',
                textAlign: TextAlign.end,
                style: textTheme.bodyLarge!
                    .copyWith(color: colorScheme.onSurfaceVariant),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
