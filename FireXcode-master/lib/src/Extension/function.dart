import 'package:flutter/gestures.dart';
import 'package:firexcode/firexcode.dart';
import 'package:flutter/rendering.dart';

extension XFunction on Function {
  Widget xFlatButton(
      {bool autofocus = false,
      Clip clipBehavior = Clip.none,
      Color color,
      FocusNode focusNode,
      Key key,
      MaterialTapTargetSize materialTapTargetSize,
      void Function() onLongPress,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      BorderSide side,
      ButtonTextTheme textTheme,
      Widget child,
      AlignmentGeometry alignment,
      double elevation,
      Duration animationDuration,
      MouseCursor disabledMouseCursor,
      Color primary,
      Color shadowColor,
      TextStyle textStyle,
      VisualDensity visualDensity,
      bool enableFeedback,
      MouseCursor enabledMouseCursor,
      Size minimumSize,
      Color onSurface}) {
    return TextButton(
      onPressed: this,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      style: TextButton.styleFrom(
        padding: padding,
        shape: shape,
        alignment: alignment,
        animationDuration: animationDuration,
        disabledMouseCursor: disabledMouseCursor,
        primary: primary,
        shadowColor: shadowColor,
        side: side,
        textStyle: textStyle,
        visualDensity: visualDensity,
        enableFeedback: enableFeedback,
        enabledMouseCursor: enabledMouseCursor,
        minimumSize: minimumSize,
        onSurface: onSurface,
        tapTargetSize: materialTapTargetSize,
        elevation: elevation,
        backgroundColor: color,
      ),
      key: key,
      focusNode: focusNode,
      onLongPress: onLongPress,
      child: child,
    );
  }

  Widget xOutlineButton({
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    Key key,
    void Function() onLongPress,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Widget child,
    Color color,
    MaterialTapTargetSize materialTapTargetSize,
    AlignmentGeometry alignment,
    BorderSide side,
    ButtonTextTheme textTheme,
    double elevation,
    Duration animationDuration,
    MouseCursor disabledMouseCursor,
    TextStyle textStyle,
    VisualDensity visualDensity,
    bool enableFeedback,
    MouseCursor enabledMouseCursor,
    Size minimumSize,
    Color onSurface,
    Color primary,
    Color shadowColor,
  }) {
    return OutlinedButton(
      onPressed: this,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      style: OutlinedButton.styleFrom(
        padding: padding,
        shape: shape,
        alignment: alignment,
        animationDuration: animationDuration,
        disabledMouseCursor: disabledMouseCursor,
        primary: primary,
        shadowColor: shadowColor,
        side: side,
        textStyle: textStyle,
        visualDensity: visualDensity,
        enableFeedback: enableFeedback,
        enabledMouseCursor: enabledMouseCursor,
        minimumSize: minimumSize,
        onSurface: onSurface,
        tapTargetSize: materialTapTargetSize,
        elevation: elevation,
        backgroundColor: color,
      ),
      focusNode: focusNode,
      key: key,
      onLongPress: onLongPress,
      child: child,
    );
  }
}

extension XApp on bool {
  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Switch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xSWitch(
      {

      /// Whether this switch is on or off.
      ///
      /// This property must not be null.
      final bool value,

      /// The color to use when this switch is on.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor].
      final Color activeColor,

      /// The color to use on the track when this switch is on.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor] with the opacity set at 50%.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color activeTrackColor,

      /// The color to use on the thumb when this switch is off.
      ///
      /// Defaults to the colors described in the Material design specification.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color inactiveThumbColor,

      /// The color to use on the track when this switch is off.
      ///
      /// Defaults to the colors described in the Material design specification.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color inactiveTrackColor,

      /// An image to use on the thumb of this switch when the switch is on.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final ImageProvider activeThumbImage,

      /// An image to use on the thumb of this switch when the switch is off.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final ImageProvider inactiveThumbImage,

      /// Configures the minimum size of the tap target.
      ///
      /// Defaults to [ThemeData.materialTapTargetSize].
      ///
      /// See also:
      ///
      ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
      final MaterialTapTargetSize materialTapTargetSize,

      /// {@macro flutter.cupertino.switch.dragStartBehavior}
      final DragStartBehavior dragStartBehavior,

      /// The color for the button's [Material] when it has the input focus.
      final Color focusColor,

      /// The color for the button's [Material] when a pointer is hovering over it.
      final Color hoverColor,

      /// {@macro flutter.widgets.Focus.focusNode}
      final FocusNode focusNode,

      /// {@macro flutter.widgets.Focus.autofocus}
      bool autofocus = false,
      final Key key,
      void Function(bool) onChanged}) {
    return Switch(
      value: this,
      onChanged: onChanged,
      autofocus: autofocus,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveThumbImage: inactiveThumbImage,
      inactiveTrackColor: inactiveTrackColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      activeThumbImage: activeThumbImage,
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }

  /// Called when the value of the checkbox should change.
  ///
  /// The checkbox passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the checkbox with the new
  /// value.
  ///
  /// If this callback is null, the checkbox will be displayed as disabled
  /// and will not respond to input gestures.
  ///
  /// When the checkbox is tapped, if [tristate] is false (the default) then
  /// the [onChanged] callback will be applied to `!value`. If [tristate] is
  /// true this callback cycle from false to true to null.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Checkbox(
  ///   value: _throwShotAway,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _throwShotAway = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xCheckbok(
      {

      /// Whether this checkbox is checked.
      ///
      /// This property must not be null.
      final bool value,

      /// The color to use when this checkbox is checked.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor].
      final Color activeColor,

      /// The color to use for the check icon when this checkbox is checked.
      ///
      /// Defaults to Color(0xFFFFFFFF)
      final Color checkColor,

      /// If true the checkbox's [value] can be true, false, or null.
      ///
      /// Checkbox displays a dash when its value is null.
      ///
      /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
      /// callback will be applied to true if the current value is false, to null if
      /// value is true, and to false if value is null (i.e. it cycles through false
      /// => true => null => false when tapped).
      ///
      /// If tristate is false (the default), [value] must not be null.
      final bool tristate,

      /// Configures the minimum size of the tap target.
      ///
      /// Defaults to [ThemeData.materialTapTargetSize].
      ///
      /// See also:
      ///
      ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
      final MaterialTapTargetSize materialTapTargetSize,

      /// The color for the checkbox's [Material] when it has the input focus.
      final Color focusColor,

      /// The color for the checkbox's [Material] when a pointer is hovering over it.
      final Color hoverColor,

      /// {@macro flutter.widgets.Focus.focusNode}
      final FocusNode focusNode,

      /// {@macro flutter.widgets.Focus.autofocus}
      final bool autofocus,

      /// The width of a checkbox widget.
      double width = 18.0,
      final Key key,
      void Function(bool) onChanged}) {
    return Checkbox(
      value: this,
      onChanged: onChanged,
      activeColor: activeColor,
      autofocus: autofocus,
      checkColor: checkColor,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      tristate: tristate,
    );
  }

  Widget xRadio(
      {final bool groupValue,

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
        value: this,
        groupValue: groupValue,
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

extension Bools on Function(bool) {
  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Switch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xSWitch({
    /// Whether this switch is on or off.
    ///
    /// This property must not be null.
    final bool value,

    /// The color to use when this switch is on.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// The color to use on the track when this switch is on.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor] with the opacity set at 50%.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color activeTrackColor,

    /// The color to use on the thumb when this switch is off.
    ///
    /// Defaults to the colors described in the Material design specification.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color inactiveThumbColor,

    /// The color to use on the track when this switch is off.
    ///
    /// Defaults to the colors described in the Material design specification.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color inactiveTrackColor,

    /// An image to use on the thumb of this switch when the switch is on.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final ImageProvider activeThumbImage,

    /// An image to use on the thumb of this switch when the switch is off.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final ImageProvider inactiveThumbImage,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// {@macro flutter.cupertino.switch.dragStartBehavior}
    final DragStartBehavior dragStartBehavior,

    /// The color for the button's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the button's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    bool autofocus = false,
    final Key key,
  }) {
    return Switch(
      value: value,
      onChanged: this,
      autofocus: autofocus,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveThumbImage: inactiveThumbImage,
      inactiveTrackColor: inactiveTrackColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      activeThumbImage: activeThumbImage,
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }

  /// Called when the value of the checkbox should change.
  ///
  /// The checkbox passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the checkbox with the new
  /// value.
  ///
  /// If this callback is null, the checkbox will be displayed as disabled
  /// and will not respond to input gestures.
  ///
  /// When the checkbox is tapped, if [tristate] is false (the default) then
  /// the [onChanged] callback will be applied to `!value`. If [tristate] is
  /// true this callback cycle from false to true to null.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Checkbox(
  ///   value: _throwShotAway,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _throwShotAway = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xCheckbok({
    /// Whether this checkbox is checked.
    ///
    /// This property must not be null.
    final bool value,

    /// The color to use when this checkbox is checked.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// The color to use for the check icon when this checkbox is checked.
    ///
    /// Defaults to Color(0xFFFFFFFF)
    final Color checkColor,

    /// If true the checkbox's [value] can be true, false, or null.
    ///
    /// Checkbox displays a dash when its value is null.
    ///
    /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
    /// callback will be applied to true if the current value is false, to null if
    /// value is true, and to false if value is null (i.e. it cycles through false
    /// => true => null => false when tapped).
    ///
    /// If tristate is false (the default), [value] must not be null.
    final bool tristate,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// The color for the checkbox's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the checkbox's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,

    /// The width of a checkbox widget.
    double width = 18.0,
    final Key key,
  }) {
    return Checkbox(
      value: value,
      onChanged: this,
      activeColor: activeColor,
      autofocus: autofocus,
      checkColor: checkColor,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      tristate: tristate,
    );
  }

  Widget xRadio({
    final bool groupValue,

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
    final Key key,
    final bool value,
  }) {
    return Radio(
        value: value,
        groupValue: groupValue,
        activeColor: activeColor,
        autofocus: autofocus,
        focusColor: focusColor,
        focusNode: focusNode,
        hoverColor: hoverColor,
        key: key,
        materialTapTargetSize: materialTapTargetSize,
        onChanged: this);
  }
}
