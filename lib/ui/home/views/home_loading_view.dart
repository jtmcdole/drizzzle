import 'package:drizzzle/ui/home/shared_widgets/shared_home_widget.dart';
import 'package:flutter/material.dart';

class HomeLoadingView extends StatefulWidget {
  const HomeLoadingView({super.key});

  @override
  State<HomeLoadingView> createState() => _HomeLoadingViewState();
}

class _HomeLoadingViewState extends State<HomeLoadingView> {
  @override
  Widget build(BuildContext context) {
    return const SharedHomeWidget(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
