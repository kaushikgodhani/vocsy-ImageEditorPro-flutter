import 'package:flutter/material.dart';
import 'package:firexcode/firexcode.dart';

class XGradientCardBanner extends StatelessWidget {
  final Function onTap;
  final Gradient gradient;
  final Color shadowColor;
  final Widget title;
  final Widget subTitle;
  final double rounded;
  final double blurRadius;
  final double spreadRadius;
  final double width;
  final Widget rightSideChild;
  final Widget button;
  final EdgeInsetsGeometry margin;

  const XGradientCardBanner(
      {Key key,
      this.onTap,
      @required this.gradient,
      this.shadowColor,
      @required this.title,
      @required this.subTitle,
      this.rounded,
      this.blurRadius,
      this.spreadRadius,
      this.width,
      this.rightSideChild,
      this.margin,
      this.button})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainerGradient(
      margin: margin,
      onTap: onTap,
      rounded: rounded,
      padding: EdgeInsets.all(20.0),
      blurRadius: blurRadius,
      spreadRadius: spreadRadius,
      shadowColor: shadowColor,
      gradient: gradient,
      child: Row(
        mainAxisAlignment: rightSideChild == null
            ? MainAxisAlignment.start
            : MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title ?? Container(),
                5.0.sizedHeight(),
                subTitle ?? Container(),
                10.0.sizedHeight(),
                button ?? Container()
              ],
            ),
          ),
          rightSideChild ?? Container()
        ],
      ),
    );
  }
}
