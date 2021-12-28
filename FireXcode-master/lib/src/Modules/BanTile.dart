import 'package:flutter/foundation.dart';
import 'package:firexcode/firexcode.dart';

class BanTile extends StatelessWidget {
  final Widget centerTitle;
  final Widget leftTile;
  final Widget rightTile;
  final Widget body;

  const BanTile(
      {Key key, this.centerTitle, this.leftTile, this.rightTile, this.body})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        leftTile ?? Container(),

        //"Monday 27 july 2000".xTextColorWhite(),
        centerTitle ?? Container(),
        rightTile ?? Container(),
      ].xRowCSB(),
      //  25.0.sizedHeight(),
      body ?? Container(),
      //20.0.sizedHeight(),
    ].xColumn();
  }
}
