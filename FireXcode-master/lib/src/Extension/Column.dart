import 'package:flutter/material.dart';

extension ColumnWudget on List<Widget> {
  Widget xColumn(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      key: key,
      children: this,
    );
  }

  Widget xColumnSS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xColumnBS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xColumnES(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xColumnSTS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  //----------------------------------------------------------  end  start

  Widget xColumnSTC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xColumnSC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xColumnEC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xColumnCC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xColumnBC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------ emd center

  Widget xColumnSTE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xColumnSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xColumnEE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xColumnCE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xColumnBE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------ emd end

  Widget xColumnSTSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xColumnSSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xColumnESA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xColumnCSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xColumnBSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------- end spaceAround

  Widget xColumnSTSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xColumnSSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xColumnESB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xColumnCSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xColumnBSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------- end spaceBetween
  Widget xColumnSTSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xColumnSSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xColumnESE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xColumnCSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xColumnBSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }
}
