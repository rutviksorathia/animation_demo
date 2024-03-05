import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseBgBlur extends StatelessWidget {
  double? sigmaX;
  double? sigmaY;
  Widget? child;
  BorderRadiusGeometry? borderRadius;

  BaseBgBlur({
    super.key,
    this.sigmaX,
    this.sigmaY,
    this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX ?? 2,
          sigmaY: sigmaY ?? 2,
        ),
        child: child,
      ),
    );
  }
}
