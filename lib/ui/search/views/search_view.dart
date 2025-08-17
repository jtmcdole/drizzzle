import 'package:diacritic/diacritic.dart';
import 'package:drizzzle/domain/models/location_model.dart';
import 'package:drizzzle/ui/search/view_models/location_view_model.dart';
import 'package:drizzzle/ui/search/view_models/weather_view_model.dart';
import 'package:drizzzle/utils/custom_system_navbar.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../utils/result.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchController = SearchController();
  @override
  Widget build(BuildContext context) {
    final locationViewModel = context.watch<LocationViewModel>();
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return CustomSystemNavBar(
      child: SearchAnchor.bar(
        barHintText: 'Search Location',
        barElevation: const WidgetStatePropertyAll(0.0),
        barPadding:
            const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 0)),
        barLeading: IconButton(
            onPressed: () {
              searchController.openView();
            },
            icon: const Icon(Icons.search_rounded)),
        searchController: searchController,
        textCapitalization: TextCapitalization.words,
        isFullScreen: true,
        suggestionsBuilder:
            (BuildContext context, SearchController searchController) async {
          context
              .read<LocationViewModel>()
              .loadLocation(name: searchController.text);
          if (locationViewModel.locationList == null) {
            // return sharedMessage(
            //         context, Symbols.travel_explore_rounded, 'Search')
            //     .children;
            return List.empty();
          } else if (!locationViewModel.loading) {
            //return _running;
            return List.empty();
          } else {
            final result = locationViewModel.locationList;
            switch (result) {
              case null:
                // return sharedMessage(context, Symbols.search, 'Search')
                //     .children;
                return List.empty();
              case Ok<List<LocationModel>>():
                final val = result.value;
                return _success(val);
              case Error<List<LocationModel>>():
                return [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'No location found!',
                      style: textTheme.headlineSmall!.copyWith(
                        color: colorScheme.onSurfaceVariant.withAlpha(125),
                      ),
                    ),
                  )
                ];
              // return sharedMessage(context, Symbols.wrong_location_rounded,
              //         'No Location found!')
              //     .children;
            }
          }
        },
      ),
    );
  }

  List<Widget> get _running {
    final height = MediaQuery.of(context).size.height;
    return [
      SizedBox(height: height / 4 + height / 64),
      const Center(child: CircularProgressIndicator()),
    ];
  }

  List<Widget> _success(List<LocationModel> data) {
    if (data.isEmpty) {
      return const [
        Center(
          child: Column(
            children: [
              SizedBox(height: 16.0),
              Text('No Such Location Found!'),
            ],
          ),
        ),
      ];
    }
    return data.map((location) {
      return ListTile(
          title: Text(removeDiacritics(location.name)),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (location.admin1 != null && location.admin1!.isNotEmpty) ...[
                Text(removeDiacritics(location.admin1!)),
                const Text(','),
                const SizedBox(width: 8),
              ],
              if (location.country != null && location.country!.isNotEmpty) ...[
                Text(removeDiacritics(location.country!))
              ],
            ],
          ),
          leading: const Icon(Symbols.globe),
          onTap: () {
            Provider.of<WeatherViewModel>(context, listen: false)
                .fetchAndSaveWeather(locationModel: location);
            searchController.clear();
            setState(() {
              searchController.closeView(null);
            });
          });
    }).toList();
  }
}
