import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSystemNavBar extends StatelessWidget {
  final Widget child;
  const CustomSystemNavBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final colorScheme = Theme.of(context).colorScheme;
    final iconBrightness =
        brightness == Brightness.light ? Brightness.dark : Brightness.light;
    final style = SystemUiOverlayStyle(
        statusBarColor: colorScheme.surface,
        statusBarIconBrightness: iconBrightness,
        systemNavigationBarColor: colorScheme.surface,
        systemNavigationBarIconBrightness: iconBrightness);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: style,
      child: child,
    );
  }
}
