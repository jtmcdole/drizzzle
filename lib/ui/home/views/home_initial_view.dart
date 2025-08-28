import 'package:drizzzle/ui/home/shared_widgets/home_search_bar.dart';
import 'package:drizzzle/ui/home/shared_widgets/shared_home_widget.dart';
import 'package:drizzzle/ui/search/shared_widgets/shared_message.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeInitialView extends StatefulWidget {
  const HomeInitialView({super.key});

  @override
  State<HomeInitialView> createState() => _HomeInitialViewState();
}

class _HomeInitialViewState extends State<HomeInitialView> {
  @override
  Widget build(BuildContext context) {
    return SharedHomeWidget(
      child: Column(
        children: [
          const SizedBox(height: 8),
          const HomeSearchBar(),
          const SizedBox(height: 8),
          Expanded(
            child: Center(
              child: sharedMessage(
                  context, Symbols.map_search_rounded, 'Search'),
            ),
          ),
        ],
      ),
    );
  }
}
