import 'package:flutter/material.dart';

class RoundedScaffoldBody extends StatelessWidget {
  const RoundedScaffoldBody({
    super.key,
    required this.child,
    this.round,
    this.topPadding,
    this.bgColor,
    this.shadowColor,
    this.shadowSpreadRadius,
    this.blurRadius,
    this.offset,
    this.padding,
  });

  final Widget child;
  final double? round;
  final double? topPadding;
  final Color? bgColor;
  final Color? shadowColor;
  final double? shadowSpreadRadius;
  final double? blurRadius;
  final Offset? offset;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding ??
          EdgeInsets.only(top: topPadding ?? 4, right: 16.0, left: 16.0),
      decoration: BoxDecoration(
        color: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(round ?? 50),
          topRight: Radius.circular(round ?? 50),
        ),
        boxShadow: [
          BoxShadow(
            color:
                shadowColor ??
                Theme.of(
                  context,
                ).appBarTheme.backgroundColor?.withOpacity(0.5) ??
                Colors.grey.withOpacity(0.2),
            spreadRadius: shadowSpreadRadius ?? 5,
            blurRadius: blurRadius ?? 7,
            offset: offset ?? const Offset(0, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
