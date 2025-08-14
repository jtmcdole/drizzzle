import 'package:drizzzle/domain/models/weather.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_loading_widget.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_message.dart';
import 'package:drizzzle/ui/search/view_models/weather_view_model.dart';
import 'package:drizzzle/ui/search/views/cloud_cover_view.dart';
import 'package:drizzzle/ui/search/views/current_view.dart';
import 'package:drizzzle/ui/search/views/daily_view.dart';
import 'package:drizzzle/ui/search/views/hourly_view.dart';
import 'package:drizzzle/ui/search/views/humidity_view.dart';
import 'package:drizzzle/ui/search/views/particles_view.dart';
import 'package:drizzzle/ui/search/views/precipitation_view.dart';
import 'package:drizzzle/ui/search/views/pressure_view.dart';
import 'package:drizzzle/ui/search/views/search_view.dart';
import 'package:drizzzle/ui/search/views/settings_view.dart';
import 'package:drizzzle/ui/search/views/uv_index_view.dart';
import 'package:drizzzle/ui/search/views/wind_speed_view.dart';
import 'package:drizzzle/utils/custom_system_navbar.dart';
import 'package:drizzzle/utils/result.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final weatherViewModel = Provider.of<WeatherViewModel>(context);
    late List<Widget> weatherBody;
    if (weatherViewModel.weather == null) {
      weatherBody =
          sharedMessage(context, Symbols.travel_explore_rounded, 'Search');
    } else if (weatherViewModel.loading) {
      final height = MediaQuery.of(context).size.height;
      weatherBody = [
        SizedBox(height: height / 4 + height / 32),
        const SharedLoadingWidget(),
      ];
    } else {
      final result = weatherViewModel.weather;
      switch (result) {
        case null:
          weatherBody =
              sharedMessage(context, Symbols.travel_explore_rounded, 'Search');
        case Ok<Weather>():
          final val = result.value;
          weatherBody = [
            CurrentView(
              locationName: val.locationName,
              currentTemperature: val.currentTemperature,
              currentApparentTemperature: val.currentApparentTemperature,
              currentWeatherIconPath: val.currentWeatherIconPath,
              currentWeatherDescription: val.currentWeatherIconDescription,
              dailyTemperatureMax: val.dailyModelList.first.dailyTemperatureMax,
              dailyTemperatureMin: val.dailyModelList.first.dailyTemperatureMin,
            ),
            const SizedBox(height: 8),
            HourlyView(hourlyModelList: val.hourlyModelList),
            const SizedBox(height: 8),
            DailyView(dailyModelList: val.dailyModelList),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: UvIndexView(aqUvIndex: val.aqUvIndex)),
                const SizedBox(width: 8),
                Expanded(
                  child: HumidityView(
                      currentRelativeHumidity: val.currentRelativeHumidity),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: WindSpeedView(
                  windSpeed_10m: val.currentWindSpeed,
                  windDirection_10m: val.currentWindDirection,
                )),
                const SizedBox(width: 8),
                Expanded(
                  child:
                      CloudCoverView(currentCloudCover: val.currentCloudCover),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: PrecipitationView(
                        currentPrecipitation: val.currentPrecipitation)),
                const SizedBox(width: 8),
                Expanded(
                  child: PressureView(
                      currentSurfacePressure: val.currentSurfacePressure),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ParticlesView(
                aqdust: val.aqdust,
                aqozone: val.aqOzone,
                aqSulphure: val.aqSulphure,
                aqNitrogen: val.aqNitrogen,
                aqCarbon: val.aqCarbon,
                aqPm2_5: val.aqPm2_5,
                aqPm10: val.aqPm10),
          ];
        case Error<Weather>():
          weatherBody = sharedMessage(
              context, Symbols.wrong_location_rounded, 'No Location found!');
      }
    }
    return CustomSystemNavBar(
      child: Scaffold(
        body: Card.filled(
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          clipBehavior: Clip.antiAlias,
          child: ListView(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  const SizedBox(width: 4),
                  const Expanded(child: SearchView()),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.settings_outlined),
                    onPressed: () {
                      final settingsRoute = MaterialPageRoute(
                          builder: (context) => const SettingsView());
                      Navigator.push(context, settingsRoute);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ...weatherBody,
            ],
          ),
        ),
      ),
    );
  }
}
