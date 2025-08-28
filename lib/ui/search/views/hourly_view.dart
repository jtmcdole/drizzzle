import 'dart:io';
import 'dart:ui';

import 'package:drizzzle/domain/models/hourly_model.dart';
import 'package:drizzzle/ui/home/view_models/unit_view_model.dart';
import 'package:drizzzle/ui/search/shared_widgets/custom_card.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utils/converter_functions.dart';

class HourlyView extends StatefulWidget {
  const HourlyView({super.key, required this.hourlyModelList});
  final List<HourlyModel> hourlyModelList;

  @override
  State<HourlyView> createState() => _HourlyViewState();
}

class _HourlyViewState extends State<HourlyView> {
  @override
  Widget build(BuildContext context) {
    return _hourlyFull();
  }

  Widget _hourlyFull() {
    final colorScheme = Theme.of(context).colorScheme;
    return CustomCard(
      color: colorScheme.surfaceContainer,
      radius: 24,
      horizontal: 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SharedTitle(
            title: 'Hourly forecast',
            iconData: Icons.access_time_rounded,
          ),
          const SizedBox(height: 4),
          Divider(color: colorScheme.onSurfaceVariant.withAlpha(125)),
          const SizedBox(height: 4),
          CustomCard(
            radius: 16,
            color: Colors.transparent,
            horizontal: 0,
            vertical: 0,
            child: SizedBox(
              height: 135,
              child: _hourly(),
            ),
          )
        ],
      ),
    );
  }

  //hourly list
  Widget _hourly() {
    final listView = ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: widget.hourlyModelList.length,
      itemBuilder: (context, index) {
        final hourlyModelListItem = widget.hourlyModelList[index];
        return _HourlyInformation(
          hourlyTime: hourlyModelListItem.hourlyTime,
          hourlyTemperature: hourlyModelListItem.hourlyTemperature,
          hourlyRelativeHumidity: hourlyModelListItem.hourlyRelativeHumidity,
          hourlyApparentTemperature:
              hourlyModelListItem.hourlyApparentTemperature,
          hourlyWeatherIconPath: hourlyModelListItem.hourlyWeatherIconPath,
          hourlyPrecipitationProbablity:
              hourlyModelListItem.hourlyPrecipitationProbablity,
          hourlyWindSpeed: hourlyModelListItem.hourlyWindSpeed,
          hourlyWindDirection: hourlyModelListItem.hourlyWindDirection,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 8,
      ),
    );
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
              scrollbars: true,
              dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch}),
          child: listView);
    } else {
      return listView;
    }
  }
}

class _HourlyInformation extends StatelessWidget {
  const _HourlyInformation({
    required this.hourlyTime,
    required this.hourlyTemperature,
    required this.hourlyRelativeHumidity,
    required this.hourlyApparentTemperature,
    required this.hourlyWeatherIconPath,
    required this.hourlyPrecipitationProbablity,
    required this.hourlyWindSpeed,
    required this.hourlyWindDirection,
  });
  final String hourlyTime;
  final String hourlyTemperature;
  final String hourlyRelativeHumidity;
  final String hourlyApparentTemperature;
  final String hourlyWeatherIconPath;
  final String hourlyPrecipitationProbablity;
  final String hourlyWindSpeed;
  final int hourlyWindDirection;
  @override
  Widget build(BuildContext context) {
    final time = iso8601ToTime(hourlyTime);
    final amOrPm = time.beforeMidday ? 'am' : 'pm';
    final precipitationIconData = precipitationProbablityToIconData(
        int.parse(hourlyPrecipitationProbablity));
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final UnitViewModel unitViewModel = Provider.of<UnitViewModel>(context);
    final isC = unitViewModel.isC ? 'C' : 'F';

    final String hourlyPrecipitationProbablityPadded =
        "$hourlyPrecipitationProbablity%".padRight(3, ' ');
    final String timeHourPadded = "${time.hour} $amOrPm".padRight(5, ' ');
    final String hourlyTemperaturePadded =
        "${isC == 'F' ? celsiusToFahrenheit(hourlyTemperature) : hourlyTemperature}\u00b0"
            .padRight(2, ' ');

    return CustomCard(
      color: colorScheme.surfaceContainerHighest,
      radius: 16,
      horizontal: 8,
      vertical: 12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            timeHourPadded,
            style: textTheme.labelLarge!.copyWith(
                color: colorScheme.onSurfaceVariant, letterSpacing: -1),
          ),
          const SizedBox(height: 2),
          SvgPicture.asset(
            hourlyWeatherIconPath,
            height: 32,
            width: 32,
          ),
          const SizedBox(height: 2),
          Text(
            hourlyTemperaturePadded,
            style: textTheme.bodyLarge!.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                precipitationIconData,
                size: 16,
                color: colorScheme.onSurfaceVariant.withAlpha(75),
              ),
              const SizedBox(width: 4),
              Text(
                hourlyPrecipitationProbablityPadded,
                style: TextStyle(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
