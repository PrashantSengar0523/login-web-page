import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, required this.desktop, required this.mobileAndTablet});
  final Widget desktop;
  final Widget mobileAndTablet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >1024) {
            return desktop; // Layout for desktops
          } else {
            return mobileAndTablet; // Layout for mobile or tablets
          }
        },
      ),
    );
  }
}