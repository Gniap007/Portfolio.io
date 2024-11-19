import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    this.decoration,
    this.color,
    this.margin,
    this.borderRadius,
    this.constraints,
    required this.child,
    this.height,
  });

  final BoxDecoration? decoration; // Optional decoration parameter
  final Color? color; // Optional color parameter
  final BorderRadius? borderRadius; // Optional borderRadius parameter
  final Widget child;
  final double? height; // Required height parameter
  final EdgeInsetsGeometry? margin; // Optional margin parameter
  final BoxConstraints? constraints; // Corrected constraints type

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      margin: margin,
      constraints: constraints,
      decoration: decoration ??
          BoxDecoration(
            color: color,
            borderRadius: borderRadius, // Apply borderRadius when provided
          ),
      child: child,
    );
  }
}
