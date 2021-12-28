import 'package:flutter/material.dart';

class XContainerGradient extends StatelessWidget {
  final double width;
  final Gradient gradient;
  final EdgeInsetsGeometry padding;
  final Color shadowColor;
  final double rounded;
  final Widget child;
  final DecorationImage image;
  final double height;
  final double blurRadius;
  final double spreadRadius;
  final Offset offset;
  final Function onTap;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  const XContainerGradient(
      {Key key,
      this.height,
      this.width,
      @required this.gradient,
      this.shadowColor,
      this.rounded,
      this.padding,
      @required this.child,
      this.blurRadius,
      this.spreadRadius,
      this.offset,
      this.onTap,
      this.margin,
      this.borderRadius,
      this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: image,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
                color: shadowColor == null
                    ? Colors.white
                    : shadowColor.withOpacity(0.4),
                blurRadius: blurRadius ?? 0,
                spreadRadius: spreadRadius ?? 0.0,
                offset: offset ?? Offset(0, 0)),
          ],
          // color: shadowColor,
          borderRadius: borderRadius ?? BorderRadius.circular(rounded ?? 0)),
      child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius:
                  borderRadius ?? BorderRadius.circular(rounded ?? 0)),
          child: InkWell(
              borderRadius: borderRadius ?? BorderRadius.circular(rounded ?? 0),
              onTap: onTap,
              child: Padding(
                padding: padding ?? EdgeInsets.all(10.0),
                child: child,
              ))),
    );
  }
}
