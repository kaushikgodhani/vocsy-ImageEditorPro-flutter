import 'package:flutter/material.dart';
import 'package:firexcode/firexcode.dart';

class XTransactiontTile extends StatelessWidget {
  final Function onTap;
  final Widget leading;
  final Widget subtitle;
  final double middleSpace;
  final Widget trailing1;
  final Widget trailing2;
  final Widget title;
  const XTransactiontTile(
      {Key key,
      this.onTap,
      this.leading,
      this.subtitle,
      this.middleSpace = 5.0,
      this.trailing1,
      this.trailing2,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: <Widget>[
        trailing1 ?? Container(),
        middleSpace.sizedHeight(),
        trailing2 ?? Container()
      ].xColumnCC(),
    );
  }
}
