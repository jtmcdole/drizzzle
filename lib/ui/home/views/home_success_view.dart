import 'package:drizzzle/ui/home/shared_widgets/home_search_bar.dart';
import 'package:drizzzle/ui/home/shared_widgets/shared_home_widget.dart';
import 'package:flutter/material.dart';

class HomeSuccessView extends StatefulWidget {
  const HomeSuccessView({
    super.key,
    required this.widgetList,
    required this.currentTemperature,
    required this.locationName,
    required this.currentWeatherDescription,
    required this.currentWeatherIconPath,
  });
  final List<Widget> widgetList;
  final String currentTemperature;
  final String locationName;
  final String currentWeatherDescription;
  final String currentWeatherIconPath;
  @override
  State<HomeSuccessView> createState() => _HomeSuccessViewState();
}

class _HomeSuccessViewState extends State<HomeSuccessView> {
  @override
  Widget build(BuildContext context) {
    return SharedHomeWidget(
      child: ListView(
        children: [
          const SizedBox(height: 8),
          const HomeSearchBar(),
          const SizedBox(height: 8),
          ...widget.widgetList,
        ],
      ),
    );
  }
}
