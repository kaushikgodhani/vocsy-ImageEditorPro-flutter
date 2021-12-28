import 'package:flutter/material.dart';
import 'package:firexcode/firexcode.dart';

extension RowGridResponsive on List<ResponsiveGridList> {
  ResponsiveGridList xResponsiveGridList(
      {double desiredItemWidth,
      double minSpacing,
      bool scroll = true,
      bool squareCells = false}) {
    return ResponsiveGridList(
      desiredItemWidth: desiredItemWidth,
      minSpacing: minSpacing,
      scroll: scroll,
      squareCells: squareCells,
      children: this,
    );
  }
}

extension ResponsiveGridRow on List<ResponsiveGridCol> {
  XResponsiveGridRow xResponsiveGridRow() {
    return XResponsiveGridRow(
      children: this,
    );
  }
}

extension XResponsiveGridCol on Widget {
  ResponsiveGridCol xResponsiveGridCol(
      {int xs = 12, int sm, int md, int lg, int xl}) {
    return ResponsiveGridCol(
      lg: lg,
      md: md,
      sm: sm,
      xl: xl,
      xs: xs,
      child: this,
    );
  }
}
