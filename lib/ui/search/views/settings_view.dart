import 'dart:collection';

import 'package:drizzzle/ui/home/view_models/home_view_model.dart';
import 'package:drizzzle/ui/home/view_models/unit_view_model.dart';
import 'package:drizzzle/utils/custom_system_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef ColorEntry = DropdownMenuEntry<int>;
typedef TempUnitEntry = DropdownMenuEntry<int>;
typedef WindUnitEntry = DropdownMenuEntry<int>;

enum ColorLabel {
  blue('Azure'),
  green('Basil'),
  yellow('Yuzu'),
  grey('Clay'),
  purple('Plum');

  const ColorLabel(this.label);
  final String label;

  static final List<ColorEntry> entries = UnmodifiableListView<ColorEntry>(
      values.map<ColorEntry>((ColorLabel color) =>
          ColorEntry(value: color.index, label: color.label)));
}

enum TempUnitLabel {
  celsius("\u00b0C"),
  fahrenheit("\u00b0F");

  const TempUnitLabel(this.label);
  final String label;
  static final List<TempUnitEntry> entries =
      UnmodifiableListView<TempUnitEntry>(values.map(
          (TempUnitLabel e) => TempUnitEntry(value: e.index, label: e.label)));
}

enum WindSpeedUnitLabel {
  celsius("km/h"),
  fahrenheit("mph");

  const WindSpeedUnitLabel(this.label);
  final String label;
  static final List<WindUnitEntry> entries =
      UnmodifiableListView<WindUnitEntry>(values.map((WindSpeedUnitLabel e) =>
          WindUnitEntry(value: e.index, label: e.label)));
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final homeViewModel = Provider.of<HomeViewModel>(context);
    final unitViewModel = Provider.of<UnitViewModel>(context);

    final brightnessSwitch = Switch(
        value: homeViewModel.isDark,
        onChanged: (_) {
          Provider.of<HomeViewModel>(context, listen: false).setBrightness();
        });
    final brightnessSubtitle = homeViewModel.isDark ? 'Dark' : 'Light';

    final accentMenu = DropdownMenu<int>(
      initialSelection: homeViewModel.index,
      onSelected: (index) {
        Provider.of<HomeViewModel>(context, listen: false).setColor(index ?? 0);
      },
      dropdownMenuEntries: ColorLabel.entries,
    );

    final tempUnitMenu = DropdownMenu<int>(
      initialSelection: unitViewModel.isC ? 0 : 1,
      dropdownMenuEntries: TempUnitLabel.entries,
      onSelected: (index) {
        Provider.of<UnitViewModel>(context, listen: false)
            .setTemperatureUnit(index ?? 0);
        final message = index == 0
            ? 'Temperature unit is set to Celsius'
            : 'Temperature unit is set to Fahrenheit';
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(SnackBar(content: Text(message)));
      },
    );
    final windUnitMenu = DropdownMenu<int>(
      initialSelection: unitViewModel.isKmh ? 0 : 1,
      dropdownMenuEntries: WindSpeedUnitLabel.entries,
      onSelected: (index) {
        Provider.of<UnitViewModel>(context, listen: false)
            .setWindSpeedUnit(index ?? 0);
        final message = index == 0
            ? 'Speed unit is set to km/h'
            : 'Speed unit is set to mph';
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(SnackBar(content: Text(message)));
      },
    );

    return CustomSystemNavBar(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Text(
                'Theme',
                style:
                    textTheme.titleMedium!.copyWith(color: colorScheme.primary),
              ),
              const SizedBox(height: 16),
              _SettingsTile(
                title: 'Dark Theme',
                subtitle: brightnessSubtitle,
                child: brightnessSwitch,
              ),
              const SizedBox(height: 8),
              _SettingsTile(
                title: 'Theme Color',
                subtitle: 'Accent color for Drizzzle',
                child: accentMenu,
              ),
              const SizedBox(height: 8),
              Text(
                'Units',
                style:
                    textTheme.titleMedium!.copyWith(color: colorScheme.primary),
              ),
              const SizedBox(height: 16),
              _SettingsTile(
                title: 'Temperature Unit',
                subtitle: 'Global unit of temperature',
                child: tempUnitMenu,
              ),
              const SizedBox(height: 8),
              _SettingsTile(
                title: 'Speed Unit',
                subtitle: 'Global unit of speed',
                child: windUnitMenu,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsTile extends StatefulWidget {
  const _SettingsTile(
      {required this.title, required this.subtitle, this.child});
  final String title;
  final String subtitle;
  final Widget? child;

  @override
  State<_SettingsTile> createState() => __SettingsTileState();
}

class __SettingsTileState extends State<_SettingsTile> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
                softWrap: true,
              ),
              Text(
                widget.subtitle,
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.start,
                softWrap: true,
              )
            ],
          ),
        ),
        if (widget.child != null) widget.child!,
      ],
    );
  }
}
