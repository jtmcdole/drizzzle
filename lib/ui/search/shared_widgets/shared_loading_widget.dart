import 'package:flutter/material.dart';

class SharedLoadingWidget extends StatelessWidget {
  const SharedLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
