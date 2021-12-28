import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firexcode/src/Text/h_tag.dart';
import 'package:firexcode/src/Text/text_material.dart';
import 'package:flutter/rendering.dart';

extension Components on String {
  Widget xH1Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H1(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH2Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H2(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH3Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H3(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH4Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H4(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH5Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H5(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH6Text(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H6(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH1SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH1(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH2SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH2(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH3SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH3(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH4SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH4(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH5SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH5(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xH6SelectableText(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return SelectableTextH6(
      text: this,
      fontWeight: fontWeight,
      color: color,
    );
  }

  Widget xFloationActionButton(
      {bool autofocus = false,
      Clip clipBehavior = Clip.none,
      Color color,
      Brightness colorBrightness,
      Color focusColor,
      FocusNode focusNode,
      Color highlightColor,
      Color hoverColor,
      Key key,
      MaterialTapTargetSize materialTapTargetSize,
      void Function(bool) onHighlightChanged,
      void Function() onLongPress,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      Color splashColor,
      Color textColor,
      ButtonTextTheme textTheme,
      double disabledElevation,
      double elevation,
      double focusElevation,
      Color foregroundColor,
      Object heroTag,
      double highlightElevation,
      String tooltip,
      bool isExtended = false,
      bool mini = false,
      double hoverElevation,
      String fontFamily,
      FontWeight fontWeight,
      double fontsize,
      Function onTap}) {
    return FloatingActionButton(
      onPressed: onTap,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      backgroundColor: color,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      disabledElevation: disabledElevation,
      elevation: elevation,
      focusElevation: focusElevation,
      foregroundColor: foregroundColor,
      heroTag: heroTag,
      highlightElevation: highlightElevation,
      hoverElevation: hoverElevation,
      isExtended: isExtended,
      mini: mini,
      tooltip: tooltip,
      shape: shape,
      splashColor: splashColor,
      child: Textmaterial(
        text: this,
        color: textColor,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontsize: fontsize,
      ),
    );
  }

  Widget xCircleNetWorkImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: NetworkImage(this),
      child: child,
    );
  }

  Widget xCircleAssetImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: AssetImage(this),
      child: child,
    );
  }

  Widget xCircleFileImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: FileImage(File(this)),
      child: child,
    );
  }

  Widget xCardTileTitle(
      {Color color = Colors.white,
      double fontsize = 20,
      FontWeight fontWeight = FontWeight.bold}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xText(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorBlack(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorWhite(
      {Color color = Colors.white, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorPurple(
      {Color color = Colors.purple, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorRed(
      {Color color = Colors.red, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorRedAccent(
      {Color color = Colors.redAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorGrey(
      {Color color = Colors.grey, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorAmber(
      {Color color = Colors.amber, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorGreen(
      {Color color = Colors.green, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorGreenAccent(
      {Color color = Colors.greenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorlightBlue(
      {Color color = Colors.lightBlue,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorLightBlueAccent(
      {Color color = Colors.lightBlueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorlightGreen(
      {Color color = Colors.lightGreen,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorLightGreenAccent(
      {Color color = Colors.lightGreenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorOrange(
      {Color color = Colors.orange, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorOrangeAccent(
      {Color color = Colors.orangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorDeepOrangeAccent(
      {Color color = Colors.deepOrangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorDeepOrange(
      {Color color = Colors.deepOrange,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorDeepPurple(
      {Color color = Colors.deepPurple,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorDeepPurpleAccent(
      {Color color = Colors.deepPurpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorBlue(
      {Color color = Colors.blue, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorBlueAccent(
      {Color color = Colors.blueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorBlueGrey(
      {Color color = Colors.blueGrey, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorAmberAccent(
      {Color color = Colors.amberAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorBrown(
      {Color color = Colors.brown, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorCyanAccent(
      {Color color = Colors.cyanAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorCyan(
      {Color color = Colors.cyan, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorIndigo(
      {Color color = Colors.indigo, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorIndigoAccent(
      {Color color = Colors.indigoAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorLime(
      {Color color = Colors.lime, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorLimeAccent(
      {Color color = Colors.limeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorPink(
      {Color color = Colors.pink, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorPinkAccent(
      {Color color = Colors.pinkAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorPurpleAccent(
      {Color color = Colors.purpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorTeal(
      {Color color = Colors.teal, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorTealAccent(
      {Color color = Colors.tealAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorYellow(
      {Color color = Colors.yellow, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextColorYellowAccent(
      {Color color = Colors.yellowAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectable(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorBlack(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorWhite(
      {Color color = Colors.white, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorPurple(
      {Color color = Colors.purple, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorRed(
      {Color color = Colors.red, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorRedAccent(
      {Color color = Colors.redAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorGrey(
      {Color color = Colors.grey, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorAmber(
      {Color color = Colors.amber, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorGreen(
      {Color color = Colors.green, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorGreenAccent(
      {Color color = Colors.greenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorlightBlue(
      {Color color = Colors.lightBlue,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorLightBlueAccent(
      {Color color = Colors.lightBlueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorlightGreen(
      {Color color = Colors.lightGreen,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorLightGreenAccent(
      {Color color = Colors.lightGreenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorOrange(
      {Color color = Colors.orange, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorOrangeAccent(
      {Color color = Colors.orangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorDeepOrangeAccent(
      {Color color = Colors.deepOrangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorDeepOrange(
      {Color color = Colors.deepOrange,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorDeepPurple(
      {Color color = Colors.deepPurple,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorDeepPurpleAccent(
      {Color color = Colors.deepPurpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorBlue(
      {Color color = Colors.blue, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorBlueAccent(
      {Color color = Colors.blueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorBlueGrey(
      {Color color = Colors.blueGrey, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorAmberAccent(
      {Color color = Colors.amberAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorBrown(
      {Color color = Colors.brown, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorCyanAccent(
      {Color color = Colors.cyanAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorCyan(
      {Color color = Colors.cyan, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorIndigo(
      {Color color = Colors.indigo, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorIndigoAccent(
      {Color color = Colors.indigoAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorLime(
      {Color color = Colors.lime, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorLimeAccent(
      {Color color = Colors.limeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorPink(
      {Color color = Colors.pink, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorPinkAccent(
      {Color color = Colors.pinkAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorPurpleAccent(
      {Color color = Colors.purpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorTeal(
      {Color color = Colors.teal, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorTealAccent(
      {Color color = Colors.tealAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorYellow(
      {Color color = Colors.yellow, double fontsize, FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget xTextSelectableColorYellowAccent(
      {Color color = Colors.yellowAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return SelectableTextMaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  Widget xTooltips({
    /// The height of the tooltip's [child].
    ///
    /// If the [child] is null, then this is the tooltip's intrinsic height.
    final double height,

    /// The amount of space by which to inset the tooltip's [child].
    ///
    /// Defaults to 16.0 logical pixels in each direction.
    final EdgeInsetsGeometry padding,

    /// The empty space that surrounds the tooltip.
    ///
    /// Defines the tooltip's outer [Container.margin]. By default, a
    /// long tooltip will span the width of its window. If long enough,
    /// a tooltip might also span the window's height. This property allows
    /// one to define how much space the tooltip must be inset from the edges
    /// of their display window.
    ///
    /// If this property is null, then [TooltipThemeData.margin] is used.
    /// If [TooltipThemeData.margin] is also null, the default margin is
    /// 0.0 logical pixels on all sides.
    final EdgeInsetsGeometry margin,

    /// The vertical gap between the widget and the displayed tooltip.
    ///
    /// When [preferBelow] is set to true and tooltips have sufficient space to
    /// display themselves, this property defines how much vertical space
    /// tooltips will position themselves under their corresponding widgets.
    /// Otherwise, tooltips will position themselves above their corresponding
    /// widgets with the given offset.
    final double verticalOffset,

    /// Whether the tooltip defaults to being displayed below the widget.
    ///
    /// Defaults to true. If there is insufficient space to display the tooltip in
    /// the preferred direction, the tooltip will be displayed in the opposite
    /// direction.
    final bool preferBelow,

    /// Whether the tooltip's [message] should be excluded from the semantics
    /// tree.
    ///
    /// Defaults to false. A tooltip will add a [Semantics.label] that is set to
    /// [Tooltip.message]. Set this property to true if the app is going to
    /// provide its own custom semantics label.
    final bool excludeFromSemantics,

    /// The widget below this widget in the tree.
    ///
    /// {@macro flutter.widgets.child}
    final Widget child,

    /// Specifies the tooltip's shape and background color.
    ///
    /// The tooltip shape defaults to a rounded rectangle with a border radius of
    /// 4.0. Tooltips will also default to an opacity of 90% and with the color
    /// [Colors.grey[700]] if [ThemeData.brightness] is [Brightness.dark], and
    /// [Colors.white] if it is [Brightness.light].
    final Decoration decoration,

    /// The style to use for the message of the tooltip.
    ///
    /// If null, the message's [TextStyle] will be determined based on
    /// [ThemeData]. If [ThemeData.brightness] is set to [Brightness.dark],
    /// [ThemeData.textTheme.bodyText2] will be used with [Colors.white]. Otherwise,
    /// if [ThemeData.brightness] is set to [Brightness.light],
    /// [ThemeData.textTheme.bodyText2] will be used with [Colors.black].
    final TextStyle textStyle,

    /// The length of time that a pointer must hover over a tooltip's widget
    /// before the tooltip will be shown.
    ///
    /// Once the pointer leaves the widget, the tooltip will immediately
    /// disappear.
    ///
    /// Defaults to 0 milliseconds (tooltips are shown immediately upon hover).
    final Duration waitDuration,

    /// The length of time that the tooltip will be shown after a long press
    /// is released.
    ///
    /// Defaults to 1.5 seconds.
    final Duration showDuration,
    final Key key,
  }) {
    return Tooltip(
      message: this,
      decoration: decoration,
      excludeFromSemantics: excludeFromSemantics,
      height: height,
      key: key,
      margin: margin,
      padding: padding,
      preferBelow: preferBelow,
      showDuration: showDuration,
      textStyle: textStyle,
      verticalOffset: verticalOffset,
      waitDuration: waitDuration,
      child: child,
    );
  }

  /// The widget to be used as the tab's label.
  ///
  /// Usually a [Text] widget, possibly wrapped in a [Semantics] widget.
  ///
  /// Must not be used in combination with [text].
  Widget xTabText({
    final Key key,

    /// The text to display as the tab's label.
    ///
    /// Must not be used in combination with [child].
    final Widget child,

    /// An icon to display as the tab's label.
    final Widget icon,

    /// The margin added around the tab's icon.
    ///
    /// Only useful when used in combination with [icon], and either one of
    /// [text] or [child] is non-null.
    final EdgeInsetsGeometry iconMargin,
  }) {
    return Tab(
      icon: icon,
      key: key,
      text: this,
      iconMargin: iconMargin,
      child: child,
    );
  }

  Widget xRadio(
      {final Object value,

      /// Called when the user selects this radio button.
      ///
      /// The radio button passes [value] as a parameter to this callback. The radio
      /// button does not actually change state until the parent widget rebuilds the
      /// radio button with the new [groupValue].
      ///
      /// If null, the radio button will be displayed as disabled.
      ///
      /// The provided callback will not be invoked if this radio button is already
      /// selected.
      ///
      /// The callback provided to [onChanged] should update the state of the parent
      /// [StatefulWidget] using the [State.setState] method, so that the parent
      /// gets rebuilt; for example:
      ///
      /// ```dart
      /// Radio<SingingCharacter>(
      ///   value: SingingCharacter.lafayette,
      ///   groupValue: _character,
      ///   onChanged: (SingingCharacter newValue) {
      ///     setState(() {
      ///       _character = newValue;
      ///     });
      ///   },
      /// )
      /// ```
      final ValueChanged onChanged,

      /// The color to use when this radio button is selected.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor].
      final Color activeColor,

      /// Configures the minimum size of the tap target.
      ///
      /// Defaults to [ThemeData.materialTapTargetSize].
      ///
      /// See also:
      ///
      ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
      final MaterialTapTargetSize materialTapTargetSize,

      /// The color for the radio's [Material] when it has the input focus.
      final Color focusColor,

      /// The color for the radio's [Material] when a pointer is hovering over it.
      final Color hoverColor,

      /// {@macro flutter.widgets.Focus.focusNode}
      final FocusNode focusNode,

      /// {@macro flutter.widgets.Focus.autofocus}
      final bool autofocus = false,

      /// {@template flutter.material.radio.mouseCursor}
      /// The cursor for a mouse pointer when it enters or is hovering over the
      /// widget.
      ///
      /// If [mouseCursor] is a [MaterialStateProperty<MouseCursor>],
      /// [MaterialStateProperty.resolve] is used for the following [MaterialState]s:
      ///
      ///  * [MaterialState.selected].
      ///  * [MaterialState.hovered].
      ///  * [MaterialState.focused].
      ///  * [MaterialState.disabled].
      /// {@endtemplate}
      ///
      /// If null, then the value of [RadioThemeData.mouseCursor] is used.
      /// If that is also null, then [MaterialStateMouseCursor.clickable] is used.
      ///
      /// See also:
      ///
      ///  * [MaterialStateMouseCursor], a [MouseCursor] that implements
      ///    `MaterialStateProperty` which is used in APIs that need to accept
      ///    either a [MouseCursor] or a [MaterialStateProperty<MouseCursor>].
      final MouseCursor mouseCursor,

      /// Set to true if this radio button is allowed to be returned to an
      /// indeterminate state by selecting it again when selected.
      ///
      /// To indicate returning to an indeterminate state, [onChanged] will be
      /// called with null.
      ///
      /// If true, [onChanged] can be called with [value] when selected while
      /// [groupValue] != [value], or with null when selected again while
      /// [groupValue] == [value].
      ///
      /// If false, [onChanged] will be called with [value] when it is selected
      /// while [groupValue] != [value], and only by selecting another radio button
      /// in the group (i.e. changing the value of [groupValue]) can this radio
      /// button be unselected.
      ///
      /// The default is false.
      ///
      /// {@tool dartpad --template=stateful_widget_scaffold}
      /// This example shows how to enable deselecting a radio button by setting the
      /// [toggleable] attribute.
      ///
      /// ```dart
      /// int? groupValue;
      /// static const List<String> selections = <String>[
      ///   'Hercules Mulligan',
      ///   'Eliza Hamilton',
      ///   'Philip Schuyler',
      ///   'Maria Reynolds',
      ///   'Samuel Seabury',
      /// ];
      ///
      /// @override
      /// Widget build(BuildContext context) {
      ///   return Scaffold(
      ///     body: ListView.builder(
      ///       itemBuilder: (context, index) {
      ///         return Row(
      ///           mainAxisSize: MainAxisSize.min,
      ///           crossAxisAlignment: CrossAxisAlignment.center,
      ///           children: <Widget>[
      ///             Radio<int>(
      ///                 value: index,
      ///                 groupValue: groupValue,
      ///                 // TRY THIS: Try setting the toggleable value to false and
      ///                 // see how that changes the behavior of the widget.
      ///                 toggleable: true,
      ///                 onChanged: (int? value) {
      ///                   setState(() {
      ///                     groupValue = value;
      ///                   });
      ///                 }),
      ///             Text(selections[index]),
      ///           ],
      ///         );
      ///       },
      ///       itemCount: selections.length,
      ///     ),
      ///   );
      /// }
      /// ```
      /// {@end-tool}
      final bool toggleable = false,
      final Key key,

      /// {@template flutter.material.radio.fillColor}
      /// The color that fills the radio button, in all [MaterialState]s.
      ///
      /// Resolves in the following states:
      ///  * [MaterialState.selected].
      ///  * [MaterialState.hovered].
      ///  * [MaterialState.focused].
      ///  * [MaterialState.disabled].
      /// {@endtemplate}
      ///
      /// If null, then the value of [activeColor] is used in the selected state. If
      /// that is also null, then the value of [RadioThemeData.fillColor] is used.
      /// If that is also null, then [ThemeData.disabledColor] is used in
      /// the disabled state, [ThemeData.toggleableActiveColor] is used in the
      /// selected state, and [ThemeData.unselectedWidgetColor] is used in the
      /// default state.
      final MaterialStateProperty<Color> fillColor,

      /// {@template flutter.material.radio.visualDensity}
      /// Defines how compact the radio's layout will be.
      /// {@endtemplate}
      ///
      /// {@macro flutter.material.themedata.visualDensity}
      ///
      /// If null, then the value of [RadioThemeData.visualDensity] is used. If that
      /// is also null, then the value of [ThemeData.visualDensity] is used.
      ///
      /// See also:
      ///
      ///  * [ThemeData.visualDensity], which specifies the [visualDensity] for all
      ///    widgets within a [Theme].
      final VisualDensity visualDensity,

      /// {@template flutter.material.radio.overlayColor}
      /// The color for the checkbox's [Material].
      ///
      /// Resolves in the following states:
      ///  * [MaterialState.pressed].
      ///  * [MaterialState.selected].
      ///  * [MaterialState.hovered].
      ///  * [MaterialState.focused].
      /// {@endtemplate}
      ///
      /// If null, then the value of [activeColor] with alpha
      /// [kRadialReactionAlpha], [focusColor] and [hoverColor] is used in the
      /// pressed, focused and hovered state. If that is also null,
      /// the value of [RadioThemeData.overlayColor] is used. If that is also null,
      /// then the value of [ThemeData.toggleableActiveColor] with alpha
      /// [kRadialReactionAlpha], [ThemeData.focusColor] and [ThemeData.hoverColor]
      /// is used in the pressed, focused and hovered state.
      final MaterialStateProperty<Color> overlayColor,

      /// {@template flutter.material.radio.splashRadius}
      /// The splash radius of the circular [Material] ink response.
      /// {@endtemplate}
      ///
      /// If null, then the value of [RadioThemeData.splashRadius] is used. If that
      /// is also null, then [kRadialReactionRadius] is used.
      final double splashRadius}) {
    return Radio(
        value: value,
        groupValue: this,
        fillColor: fillColor,
        mouseCursor: mouseCursor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        toggleable: toggleable,
        visualDensity: visualDensity,
        activeColor: activeColor,
        autofocus: autofocus,
        focusColor: focusColor,
        focusNode: focusNode,
        hoverColor: hoverColor,
        key: key,
        materialTapTargetSize: materialTapTargetSize,
        onChanged: onChanged);
  }
}
