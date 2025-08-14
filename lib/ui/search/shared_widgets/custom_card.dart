import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.radius,
    required this.child,
    this.color = Colors.transparent,
    this.horizontal = 16,
    this.vertical = 16,
  });
  final Color color;
  final double radius;
  final Widget child;
  final double horizontal;
  final double vertical;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: widget.color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius)),
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: widget.horizontal,
          vertical: widget.vertical,
        ),
        child: widget.child,
      ),
    );
  }
}
