import 'package:drizzzle/ui/home/view_models/unit_view_model.dart';
import 'package:drizzzle/ui/search/shared_widgets/custom_card.dart';
import 'package:drizzzle/utils/converter_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CurrentView extends StatefulWidget {
  const CurrentView({
    super.key,
    required this.locationName,
    required this.currentTemperature,
    required this.currentApparentTemperature,
    required this.currentWeatherIconPath,
    required this.currentWeatherDescription,
    required this.dailyTemperatureMax,
    required this.dailyTemperatureMin,
    //required this.currentWeatherIconDescription,
  });
  final String locationName;
  final String currentTemperature;
  final String currentApparentTemperature;
  final String currentWeatherIconPath;
  final String currentWeatherDescription;
  final String dailyTemperatureMax;
  final String dailyTemperatureMin;
  //final String currentWeatherIconDescription;
  @override
  State<CurrentView> createState() => _CurrentViewState();
}

class _CurrentViewState extends State<CurrentView> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      radius: 24,
      horizontal: 12,
      child: _currentFull(),
    );
  }

  // full current view
  Row _currentFull() {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //const SizedBox(width: 8),
        _currentLeft(),
        const Expanded(child: SizedBox()),
        _currentRight(),
        //const SizedBox(width: 8),
      ],
    );
  }

  // current left side view
  Column _currentLeft() {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final UnitViewModel unitViewModel = Provider.of<UnitViewModel>(context);
    final isC = unitViewModel.isC ? 'C' : 'F';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.locationName,
          style: textTheme.displaySmall!.copyWith(color: colorScheme.primary),
          textAlign: TextAlign.start,
          softWrap: true,
        ),
        Text(
          '${isC == 'F' ? celsiusToFahrenheit(widget.currentTemperature) : widget.currentTemperature}\u00b0$isC',
          style: textTheme.displayLarge!.copyWith(
              color: colorScheme.primary, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        Text(
          widget.currentWeatherDescription,
          style: textTheme.bodyLarge!
              .copyWith(color: colorScheme.onSurfaceVariant),
          textAlign: TextAlign.start,
          softWrap: true,
        ),
        Text(
          '${isC == 'F' ? celsiusToFahrenheit(widget.dailyTemperatureMax) : widget.dailyTemperatureMax}\u00b0 / ${isC == 'F' ? celsiusToFahrenheit(widget.dailyTemperatureMin) : widget.dailyTemperatureMin}\u00b0 Feels like ${isC == 'F' ? celsiusToFahrenheit(widget.currentApparentTemperature) : widget.currentApparentTemperature}\u00b0$isC',
          style: textTheme.bodyLarge!
              .copyWith(color: colorScheme.onSurfaceVariant),
          textAlign: TextAlign.start,
          softWrap: true,
        ),
      ],
    );
  }

  // current right side view
  SvgPicture _currentRight() {
    return SvgPicture.asset(
      widget.currentWeatherIconPath,
      height: 96,
      width: 96,
    );
  }
}
