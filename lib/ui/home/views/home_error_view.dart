import 'package:drizzzle/ui/home/shared_widgets/home_search_bar.dart';
import 'package:drizzzle/ui/home/shared_widgets/shared_home_widget.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_message.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeErrorView extends StatefulWidget {
  const HomeErrorView({super.key});

  @override
  State<HomeErrorView> createState() => _HomeErrorViewState();
}

class _HomeErrorViewState extends State<HomeErrorView> {
  @override
  Widget build(BuildContext context) {
    return SharedHomeWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          const HomeSearchBar(),
          const SizedBox(height: 8),
          Expanded(
            child: Center(
              child: sharedMessage(context, Symbols.wrong_location_rounded,
                  'No Location found!'),
            ),
          ),
        ],
      ),
    );
  }
}
