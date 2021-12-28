import 'package:flutter/material.dart';
import 'package:firexcode/src/Container/Container.dart';

class XBlogTile extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final Color backSideBackgroundColor;
  final double cardElevation;
  final double imageHeight;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;
  final ShapeBorder shape;
  final Widget leading;
  final EdgeInsetsGeometry margin;
  final Function tileOnTap;
  final double backrounded;
  final DecorationImage image;
  final Color color;
  final BorderRadiusGeometry backBorderRadius;
  final double rounded;
  const XBlogTile(
      {Key key,
      this.onTap,
      this.child,
      this.backSideBackgroundColor,
      this.cardElevation,
      this.imageHeight,
      this.title,
      this.subTitle,
      this.trailing,
      this.leading,
      this.margin,
      this.tileOnTap,
      this.image,
      this.backrounded,
      this.backBorderRadius,
      this.shape,
      this.color,
      this.rounded})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainer(
      rounded: backrounded,
      onTap: () {},
      color: backSideBackgroundColor,
      margin: margin,
      borderRadius: backBorderRadius,
      child: Card(
        shape: shape,
        color: color,
        elevation: cardElevation,
        child: Column(
          children: <Widget>[
            XContainer(
              rounded: rounded,
              onTap: onTap,
              height: imageHeight,
              width: MediaQuery.of(context).size.width,
              image: image,
              child: child,
            ),
            ListTile(
              onTap: tileOnTap,
              title: title,
              subtitle: subTitle,
              trailing: trailing,
              leading: leading,
            )
          ],
        ),
      ),
    );
  }
}
