import 'package:drizzzle/utils/converter_functions.dart';
import 'package:drizzzle/utils/resource_string.dart';
import 'package:home_widget/home_widget.dart';

Future<void> updateCurrentWidget(
    {required String currentTemperature,
    required String cityName,
    required String weatherCondition,
    required String weatherIconPath,
    required String precipitationProbability}) async {
  await HomeWidget.saveWidgetData<int>(
      AndroidWidgetKeys.weatherIconIdKey, pathToImageid(weatherIconPath));
  await HomeWidget.saveWidgetData<String>(
      AndroidWidgetKeys.temperatureKey, currentTemperature);
  await HomeWidget.saveWidgetData<String>(
      AndroidWidgetKeys.cityNameKey, cityName);
  await HomeWidget.saveWidgetData<String>(
      AndroidWidgetKeys.weatherConditionKey, weatherCondition);
  await HomeWidget.saveWidgetData<String>(
      AndroidWidgetKeys.precipitationProbabilityKey, precipitationProbability);

  await HomeWidget.updateWidget(
      androidName: AndroidWidgetNames.currentWeatherWidget);
}
