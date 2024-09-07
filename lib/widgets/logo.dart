import 'package:app/widgets/gradient.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.height = 45,
    this.width = 45,
  });
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: AppGradients.sBP, borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          Positioned(
              top: 8,
              left: 8,
              child: Container(
                height: 15,
                width: 15,
                color: Colors.white,
              )),
          Positioned(
              bottom: 8,
              right: 10,
              child: Container(
                height: 7,
                width: 7,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              ))
        ],
      ),
    );
  }
}
