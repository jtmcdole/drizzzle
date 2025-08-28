import 'package:drizzzle/utils/custom_system_navbar.dart';
import 'package:flutter/material.dart';

class SharedHomeWidget extends StatefulWidget {
  const SharedHomeWidget({super.key, required this.child});
  final Widget child;
  @override
  State<SharedHomeWidget> createState() => _SharedHomeWidgetState();
}

class _SharedHomeWidgetState extends State<SharedHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomSystemNavBar(
      child: SafeArea(
        child: Scaffold(
          body: Card.filled(
            color: Colors.transparent,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            clipBehavior: Clip.antiAlias,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
