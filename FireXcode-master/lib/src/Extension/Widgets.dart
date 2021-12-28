import 'package:flutter/gestures.dart';
import 'package:firexcode/firexcode.dart';
import 'package:flutter/services.dart';

import 'dart:ui' as ui show TextHeightBehavior;

extension Widgets on Widget {
  //drawer
  Widget xdrawer(
      {

      /// The z-coordinate at which to place this drawer relative to its parent.
      ///
      /// This controls the size of the shadow below the drawer.
      ///
      /// Defaults to 16, the appropriate elevation for drawers. The value is
      /// always non-negative.
      final double elevation,

      /// The semantic label of the dialog used by accessibility frameworks to
      /// announce screen transitions when the drawer is opened and closed.
      ///
      /// If this label is not provided, it will default to
      /// [MaterialLocalizations.drawerLabel].
      ///
      /// See also:
      ///
      ///  * [SemanticsConfiguration.namesRoute], for a description of how this
      ///    value is used.
      final String semanticLabel,
      final Key key}) {
    return Drawer(
      elevation: elevation,
      key: key,
      semanticLabel: semanticLabel,
      child: this,
    );
  }

  /// ScafArea`
  Widget xSafeArea({
    /// Whether to avoid system intrusions on the left.
    final bool left = true,

    /// Whether to avoid system intrusions at the top of the screen, typically the
    /// system status bar.
    final bool top = true,

    /// Whether to avoid system intrusions on the right.
    final bool right = true,

    /// Whether to avoid system intrusions on the bottom side of the screen.
    final bool bottom = true,

    /// This minimum padding to apply.
    ///
    /// The greater of the minimum insets and the media padding will be applied.
    final EdgeInsets minimum = EdgeInsets.zero,

    /// Specifies whether the [SafeArea] should maintain the [viewPadding] instead
    /// of the [padding] when consumed by the [viewInsets] of the current
    /// context's [MediaQuery], defaults to false.
    ///
    /// For example, if there is an onscreen keyboard displayed above the
    /// SafeArea, the padding can be maintained below the obstruction rather than
    /// being consumed. This can be helpful in cases where your layout contains
    /// flexible , which could visibly move when opening a software
    /// keyboard due to the change in the padding value. Setting this to true will
    /// avoid the UI shift.
    final bool maintainBottomViewPadding = false,
    final Key key,
  }) {
    return SafeArea(
      bottom: bottom,
      key: key,
      left: left,
      maintainBottomViewPadding: maintainBottomViewPadding,
      minimum: minimum,
      right: right,
      top: top,
      child: this,
    );
  }

  Widget xHero(
      {Widget Function(BuildContext, Size, Widget) placeholderBuilder,
      Tween<Rect> Function(Rect, Rect) createRectTween,
      Object tag,
      bool transitionOnUserGestures = false,
      Key key,
      Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
              BuildContext, BuildContext)
          flightShuttleBuilder}) {
    return Hero(
      tag: tag,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      key: key,
      transitionOnUserGestures: transitionOnUserGestures,
      placeholderBuilder: placeholderBuilder,
      child: this,
    );
  }

  Widget xAnimationLimiter({Key key}) {
    return AnimationLimiter(
      key: key,
      child: this,
    );
  }

  Widget xNestedScrollView({
    /// An object that can be used to control the position to which the outer
    /// scroll view is scrolled.
    final ScrollController controller,

    /// The axis along which the scroll view scrolls.
    ///
    /// Defaults to [Axis.vertical].
    final Axis scrollDirection,

    /// Whether the scroll view scrolls in the reading direction.
    ///
    /// For example, if the reading direction is left-to-right and
    /// [scrollDirection] is [Axis.horizontal], then the scroll view scrolls from
    /// left to right when [reverse] is false and from right to left when
    /// [reverse] is true.
    ///
    /// Similarly, if [scrollDirection] is [Axis.vertical], then the scroll view
    /// scrolls from top to bottom when [reverse] is false and from bottom to top
    /// when [reverse] is true.
    ///
    /// Defaults to false.
    final bool reverse,

    /// How the scroll view should respond to user input.
    ///
    /// For example, determines how the scroll view continues to animate after the
    /// user stops dragging the scroll view (providing a custom implementation of
    /// [ScrollPhysics.createBallisticSimulation] allows this particular aspect of
    /// the physics to be overridden).
    ///
    /// Defaults to matching platform conventions.
    ///
    /// The [ScrollPhysics.applyBoundaryConditions] implementation of the provided
    /// object should not allow scrolling outside the scroll extent range
    /// described by the [ScrollMetrics.minScrollExtent] and
    /// [ScrollMetrics.maxScrollExtent] properties passed to that method. If that
    /// invariant is not maintained, the nested scroll view may respond to user
    /// scrolling erratically.
    final ScrollPhysics physics,

    /// A builder for any widgets that are to precede the inner scroll views (as
    /// given by [body]).
    ///
    /// Typically this is used to create a [SliverAppBar] with a [TabBar].
    @required final NestedScrollViewHeaderSliversBuilder headerSliverBuilder,

    /// The widget to show inside the [NestedScrollView].
    ///
    /// Typically this will be [TabBarView].
    ///
    /// The [body] is built in a context that provides a [PrimaryScrollController]
    /// that interacts with the [NestedScrollView]'s scroll controller. Any
    /// [ListView] or other [Scrollable]-based widget inside the [body] that is
    /// intended to scroll with the [NestedScrollView] should therefore not be
    /// given an explicit [ScrollController], instead allowing it to default to
    /// the [PrimaryScrollController] provided by the [NestedScrollView].
    final Widget body,

    /// {@macro flutter.widgets.scrollable.dragStartBehavior}
    final DragStartBehavior dragStartBehavior,
    final Key key,
  }) {
    return NestedScrollView(
      body: this,
      headerSliverBuilder: headerSliverBuilder,
      controller: controller,
      dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
      key: key,
      physics: physics,
      reverse: reverse,
      scrollDirection: scrollDirection ?? Axis.vertical,
    );
  }
}

extension AppBarXs on Widget {
// AppBar
  PreferredSizeWidget xAppBar(
      {final Widget leading,
      final bool automaticallyImplyLeading,
      final List<Widget> actions,
      final Gradient gradient,
      final PreferredSizeWidget bottom,
      final double elevation,
      final ShapeBorder shape,
      final Brightness brightness,
      final IconThemeData iconTheme,
      final IconThemeData actionsIconTheme,
      final TextTheme textTheme,
      final bool primary,
      final bool centerTitle,
      final double titleSpacing,
      final double toolbarOpacity,
      final double bottomOpacity,
      final DecorationImage image,
      @override final Size preferredSize,
      final Color backgroundColor,

      /// {@template flutter.material.appbar.excludeHeaderSemantics}
      /// Whether the title should be wrapped with header [Semantics].
      ///
      /// Defaults to false.
      /// {@endtemplate}
      final bool excludeHeaderSemantics,
      final bool backwardsCompatibility,

      /// {@template flutter.material.appbar.foregroundColor}
      /// The default color for [Text] and [Icon]s within the app bar.
      ///
      /// If null, then [AppBarTheme.foregroundColor] is used. If that
      /// value is also null, then [AppBar] uses the overall theme's
      /// [ColorScheme.onPrimary] if the overall theme's brightness is
      /// [Brightness.light], and [ColorScheme.onSurface] if the overall
      /// theme's [brightness] is [Brightness.dark].
      ///
      /// This color is used to configure [DefaultTextStyle] that contains
      /// the toolbar's children, and the default [IconTheme] widgets that
      /// are created if [iconTheme] and [actionsIconTheme] are null.
      /// {@endtemplate}
      ///
      /// See also:
      ///
      ///  * [backgroundColor], which specifies the app bar's background color.
      ///  * [Theme.of], which returns the current overall Material theme as
      ///    a [ThemeData].
      ///  * [ThemeData.colorScheme], the thirteen colors that most Material widget
      ///    default colors are based on.
      ///  * [ColorScheme.brightness], which indicates if the overall [Theme]
      ///    is light or dark.
      final Color foregroundColor,

      /// {@template flutter.material.appbar.leadingWidth}
      /// Defines the width of [leading] widget.
      ///
      /// By default, the value of `leadingWidth` is 56.0.
      /// {@endtemplate}
      final double leadingWidth,

      /// {@template flutter.material.appbar.shadowColor}
      /// The of the shadow below the app bar.
      ///
      /// If this property is null, then [AppBarTheme.shadowColor] of
      /// [ThemeData.appBarTheme] is used. If that is also null, the default value
      /// is fully opaque black.
      /// {@endtemplate}
      ///
      /// See also:
      ///
      ///  * [elevation], which defines the size of the shadow below the app bar.
      ///  * [shape], which defines the shape of the app bar and its shadow.
      final Color shadowColor,

      /// {@template flutter.material.appbar.systemOverlayStyle}
      /// Specifies the style to use for the system overlays that overlap the AppBar.
      ///
      /// If this property is null, then [SystemUiOverlayStyle.light] is used if the
      /// overall theme is dark, [SystemUiOverlayStyle.dark] otherwise. Theme brightness
      /// is defined by [ColorScheme.brightness] for [ThemeData.colorScheme].
      ///
      /// The AppBar's descendants are built within a
      /// `AnnotatedRegion<SystemUiOverlayStyle>` widget, which causes
      /// [SystemChrome.setSystemUIOverlayStyle] to be called
      /// automatically.  Apps should not enclose an AppBar with their
      /// own [AnnotatedRegion].
      /// {@endtemplate}
      //
      /// See also:
      ///  * [SystemChrome.setSystemUIOverlayStyle]
      final SystemUiOverlayStyle systemOverlayStyle,

      /// {@template flutter.material.appbar.titleTextStyle}
      /// The default text style for the AppBar's [title] widget.
      ///
      /// If this property is null, then [AppBarTheme.titleTextStyle] of
      /// [ThemeData.appBarTheme] is used. If that is also null, the default
      /// value is a copy of the overall theme's [TextTheme.headline6]
      /// [TextStyle], with color set to the app bar's [foregroundColor].
      /// {@endtemplate}
      ///
      /// See also:
      ///
      ///  * [toolbarTextStyle], which is the default text style for the AppBar's
      ///    [title], [leading], and [actions] widgets, also known as the
      ///    AppBar's "toolbar".
      ///  * [DefaultTextStyle], which overrides the default text style for all of the
      ///    the widgets in a subtree.
      final TextStyle titleTextStyle,

      /// {@template flutter.material.appbar.toolbarHeight}
      /// Defines the height of the toolbar component of an [AppBar].
      ///
      /// By default, the value of `toolbarHeight` is [kToolbarHeight].
      /// {@endtemplate}
      final double toolbarHeight,

      /// {@template flutter.material.appbar.toolbarTextStyle}
      /// The default text style for the AppBar's [leading], and
      /// [actions] widgets, but not its [title].
      ///
      /// If this property is null, then [AppBarTheme.toolbarTextStyle] of
      /// [ThemeData.appBarTheme] is used. If that is also null, the default
      /// value is a copy of the overall theme's [TextTheme.bodyText2]
      /// [TextStyle], with color set to the app bar's [foregroundColor].
      /// {@endtemplate}
      ///
      /// See also:
      ///
      ///  * [titleTextStyle], which overrides the default text style for the [title].
      ///  * [DefaultTextStyle], which overrides the default text style for all of the
      ///    the widgets in a subtree.
      final TextStyle toolbarTextStyle,
      final Key key}) {
    return AppbarGadient(
      key: key,
      shadowColor: shadowColor,
      titleTextStyle: titleTextStyle,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle,
      systemOverlayStyle: systemOverlayStyle,
      leadingWidth: leadingWidth,
      foregroundColor: foregroundColor,
      backwardsCompatibility: backwardsCompatibility ?? false,
      excludeHeaderSemantics: excludeHeaderSemantics ?? false,
      backgroundColor: backgroundColor,
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      actionsIconTheme: actionsIconTheme,
      centerTitle: centerTitle,
      title: this,
      bottom: bottom,
      bottomOpacity: bottomOpacity ?? 1.0,
      toolbarOpacity: toolbarOpacity ?? 1.0,
      titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
      iconTheme: iconTheme,
      brightness: brightness,
      elevation: elevation,
      leading: leading,
      primary: primary ?? true,
      shape: shape,
      textTheme: textTheme,
      gradient: gradient,
      image: image,
      // key: key,
    );
  }

  // /// inkwell widget InkWell()
  // Widget xInkWell({
  //   Key key,
  //   GestureTapCallback onTap,
  //   GestureTapCallback onDoubleTap,
  //   GestureLongPressCallback onLongPress,
  //   GestureTapDownCallback onTapDown,
  //   GestureTapCancelCallback onTapCancel,
  //   ValueChanged<bool> onHighlightChanged,
  //   ValueChanged<bool> onHover,
  //   Color focusColor,
  //   Color hoverColor,
  //   Color highlightColor,
  //   Color splashColor,
  //   InteractiveInkFeatureFactory splashFactory,
  //   double radius,
  //   BorderRadius borderRadius,
  //   ShapeBorder customBorder,
  //   bool enableFeedback = true,
  //   bool excludeFromSemantics = false,
  //   FocusNode focusNode,
  //   bool canRequestFocus = true,
  //   ValueChanged<bool> onFocusChange,
  //   bool autofocus = false,
  // }) {
  //   return InkWell(
  //     child: this,
  //     key: key,
  //     onTap: onTap,
  //     onDoubleTap: onDoubleTap,
  //     onLongPress: onLongPress,
  //     onTapDown: onTapDown,
  //     onTapCancel: onTapCancel,
  //     onHighlightChanged: onHighlightChanged,
  //     onHover: onHover,
  //     focusColor: focusColor,
  //     hoverColor: hoverColor,
  //     highlightColor: highlightColor,
  //     splashColor: splashColor,
  //     splashFactory: splashFactory,
  //     radius: radius,
  //     borderRadius: borderRadius,
  //     customBorder: customBorder,
  //     enableFeedback: enableFeedback ?? true,
  //     excludeFromSemantics: excludeFromSemantics ?? false,
  //     focusNode: focusNode,
  //     canRequestFocus: canRequestFocus ?? true,
  //     onFocusChange: onFocusChange,
  //     autofocus: autofocus ?? false,
  //   );
  // }

  Future xDialog(context,
      {final bool barrierDismissible = true,
      final bool useRootNavigator = true,
      final Color barrierColor,
      final RouteSettings routeSettings,
      final bool useSafeArea,
      final String barrierLabel}) {
    return showDialog(
        context: context,
        barrierColor: barrierColor,
        routeSettings: routeSettings,
        useSafeArea: useSafeArea,
        barrierDismissible: barrierDismissible,
        useRootNavigator: useRootNavigator,
        builder: (context) {
          return this;
        },
        barrierLabel: barrierLabel);
  }
}

extension FunctionWidget on Widget Function(BuildContext) {
  Future xDialogBuilder(
    context, {
    final bool barrierDismissible = true,
    final bool useRootNavigator = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      builder: this,
      // ignore: deprecated_member_use
    );
  }
}

extension StringsX on String {
  Widget text(
      {

      /// The text to display.
      ///
      /// This will be null if a [textSpan] is provided instead.
      final String data,

      /// The text to display as a [InlineSpan].
      ///
      /// This will be null if [data] is provided instead.
      final InlineSpan textSpan,

      /// If non-null, the style to use for this text.
      ///
      /// If the style's "inherit" property is true, the style will be merged with
      /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
      /// replace the closest enclosing [DefaultTextStyle].
      final TextStyle style,

      /// {@macro flutter.painting.textPainter.strutStyle}
      final StrutStyle strutStyle,

      /// How the text should be aligned horizontally.
      final TextAlign textAlign,

      /// The directionality of the text.
      ///
      /// This decides how [textAlign] values like [TextAlign.start] and
      /// [TextAlign.end] are interpreted.
      ///
      /// This is also used to disambiguate how to render bidirectional text. For
      /// example, if the [data] is an English phrase followed by a Hebrew phrase,
      /// in a [TextDirection.ltr] context the English phrase will be on the left
      /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
      /// context, the English phrase will be on the right and the Hebrew phrase on
      /// its left.
      ///
      /// Defaults to the ambient [Directionality], if any.
      final TextDirection textDirection,

      /// Used to select a font when the same Unicode character can
      /// be rendered differently, depending on the locale.
      ///
      /// It's rarely necessary to set this property. By default its value
      /// is inherited from the enclosing app with `Localizations.localeOf(context)`.
      ///
      /// See [RenderParagraph.locale] for more information.
      final Locale locale,

      /// Whether the text should break at soft line breaks.
      ///
      /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
      final bool softWrap,

      /// How visual overflow should be handled.
      final TextOverflow overflow,

      /// The number of font pixels for each logical pixel.
      ///
      /// For example, if the text scale factor is 1.5, text will be 50% larger than
      /// the specified font size.
      ///
      /// The value given to the constructor as textScaleFactor. If null, will
      /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
      /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
      final double textScaleFactor,

      /// An optional maximum number of lines for the text to span, wrapping if necessary.
      /// If the text exceeds the given number of lines, it will be truncated according
      /// to [overflow].
      ///
      /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
      /// edge of the box.
      ///
      /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
      /// an explicit number for its [DefaultTextStyle.maxLines], then the
      /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
      /// widget directly to entirely override the [DefaultTextStyle].
      final int maxLines,

      /// An alternative semantics label for this text.
      ///
      /// If present, the semantics of this widget will contain this value instead
      /// of the actual text. This will overwrite any of the semantics labels applied
      /// directly to the [TextSpan]s.
      ///
      /// This is useful for replacing abbreviations or shorthands with the full
      /// text value:
      ///
      /// ```dart
      /// Text(r'$$', semanticsLabel: 'Double dollars')
      /// ```
      final String semanticsLabel,

      /// {@macro flutter.painting.textPainter.textWidthBasis}
      final TextWidthBasis textWidthBasis,
      final Key key,

      /// {@macro flutter.dart:ui.textHeightBehavior}
      final ui.TextHeightBehavior textHeightBehavior}) {
    return Text(
      this,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      key: key,
      maxLines: maxLines,
      locale: locale,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
    );
  }

  Widget textSelectable({
    /// The text to display.
    ///
    /// This will be null if a [textSpan] is provided instead.
    final String data,

    /// The text to display as a [InlineSpan].
    ///
    /// This will be null if [data] is provided instead.
    final InlineSpan textSpan,

    /// If non-null, the style to use for this text.
    ///
    /// If the style's "inherit" property is true, the style will be merged with
    /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
    /// replace the closest enclosing [DefaultTextStyle].
    final TextStyle style,

    /// {@macro flutter.painting.textPainter.strutStyle}
    final StrutStyle strutStyle,

    /// How the text should be aligned horizontally.
    final TextAlign textAlign,

    /// The directionality of the text.
    ///
    /// This decides how [textAlign] values like [TextAlign.start] and
    /// [TextAlign.end] are interpreted.
    ///
    /// This is also used to disambiguate how to render bidirectional text. For
    /// example, if the [data] is an English phrase followed by a Hebrew phrase,
    /// in a [TextDirection.ltr] context the English phrase will be on the left
    /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
    /// context, the English phrase will be on the right and the Hebrew phrase on
    /// its left.
    ///
    /// Defaults to the ambient [Directionality], if any.
    final TextDirection textDirection,

    /// The number of font pixels for each logical pixel.
    ///
    /// For example, if the text scale factor is 1.5, text will be 50% larger than
    /// the specified font size.
    ///
    /// The value given to the constructor as textScaleFactor. If null, will
    /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
    /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
    final double textScaleFactor,

    /// An optional maximum number of lines for the text to span, wrapping if necessary.
    /// If the text exceeds the given number of lines, it will be truncated according
    /// to [overflow].
    ///
    /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
    /// edge of the box.
    ///
    /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
    /// an explicit number for its [DefaultTextStyle.maxLines], then the
    /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
    /// widget directly to entirely override the [DefaultTextStyle].
    final int maxLines,

    /// {@macro flutter.painting.textPainter.textWidthBasis}
    final TextWidthBasis textWidthBasis,
    final Key key,

    /// {@macro flutter.widgets.editableText.autofocus}
    bool autofocus = false,

    /// {@macro flutter.widgets.editableText.minLines}
    final int minLines,

    /// {@macro flutter.widgets.editableText.showCursor}
    bool showCursor = false,

    /// {@macro flutter.widgets.editableText.cursorWidth}
    final double cursorWidth,

    /// {@macro flutter.widgets.editableText.cursorHeight}
    final double cursorHeight,

    /// {@macro flutter.widgets.editableText.cursorRadius}
    final Radius cursorRadiu,

    /// The color to use when painting the cursor.
    ///
    /// Defaults to the theme's `cursorColor` when null.
    final Color cursorColor,

    /// {@macro flutter.widgets.editableText.enableInteractiveSelection}
    final bool enableInteractiveSelection = true,

    /// {@macro flutter.widgets.scrollable.dragStartBehavior}
    final DragStartBehavior dragStartBehavior = DragStartBehavior.start,

    /// Defines the focus for this widget.
    ///
    /// Text is only selectable when widget is focused.
    ///
    /// The [focusNode] is a long-lived object that's typically managed by a
    /// [StatefulWidget] parent. See [FocusNode] for more information.
    ///
    /// To give the focus to this widget, provide a [focusNode] and then
    /// use the current [FocusScope] to request the focus:
    ///
    /// ```dart
    /// FocusScope.of(context).requestFocus(myFocusNode);
    /// ```
    ///
    /// This happens automatically when the widget is tapped.
    ///
    /// To be notified when the widget gains or loses the focus, add a listener
    /// to the [focusNode]:
    ///
    /// ```dart
    /// focusNode.addListener(() { print(myFocusNode.hasFocus); });
    /// ```
    ///
    /// If null, this widget will create its own [FocusNode].
    final FocusNode focusNode,

    /// {@macro flutter.widgets.editableText.onSelectionChanged}
    final SelectionChangedCallback onSelectionChanged,

    /// Called when the user taps on this selectable text.
    ///
    /// The selectable text builds a [GestureDetector] to handle input events like tap,
    /// to trigger focus requests, to move the caret, adjust the selection, etc.
    /// Handling some of those events by wrapping the selectable text with a competing
    /// GestureDetector is problematic.
    ///
    /// To unconditionally handle taps, without interfering with the selectable text's
    /// internal gesture detector, provide this callback.
    ///
    /// To be notified when the text field gains or loses the focus, provide a
    /// [focusNode] and add a listener to that.
    ///
    /// To listen to arbitrary pointer events without competing with the
    /// selectable text's internal gesture detector, use a [Listener].
    final GestureTapCallback onTap,

    /// {@macro flutter.widgets.editableText.scrollPhysics}
    final ScrollPhysics scrollPhysics,

    /// {@macro flutter.widgets.editableText.selectionControls}
    final TextSelectionControls selectionControls,

    /// Configuration of toolbar options.
    ///
    /// Paste and cut will be disabled regardless.
    ///
    /// If not set, select all and copy will be enabled by default.
    final ToolbarOptions toolbarOptions,

    /// {@macro flutter.dart:ui.textHeightBehavior}
    final TextHeightBehavior textHeightBehavior,
  }) {
    return SelectableText(
      this,
      cursorColor: cursorColor,
      minLines: minLines,
      cursorHeight: cursorHeight,
      cursorWidth: cursorWidth ?? 0.0,
      cursorRadius: cursorRadiu,
      showCursor: showCursor,
      enableInteractiveSelection: enableInteractiveSelection,
      dragStartBehavior: dragStartBehavior,
      focusNode: focusNode,
      onSelectionChanged: onSelectionChanged,
      onTap: onTap,
      scrollPhysics: scrollPhysics,
      selectionControls: selectionControls,
      toolbarOptions: toolbarOptions,
      textHeightBehavior: textHeightBehavior,
      autofocus: autofocus,
      textScaleFactor: textScaleFactor,
      key: key,
      maxLines: maxLines,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
    );
  }

  Widget xTFD(
      {final double fontSize,
      final TextEditingController controller,
      final Color color,
      final double lableSize,
      final Color textColor,
      final bool obscureText,
      final Key key,
      final int maxline}) {
    return TextFiledMaterialD(
      name: this,
      color: color,
      fontSize: fontSize,
      lableSize: lableSize,
      obscureText: obscureText,
      textColor: textColor,
      controller: controller,
      key: key,
      maxline: maxline ?? 3,
    );
  }

  /// tf mean TextFormFiled
  Widget xTF({
    final double fontSize,
    final TextEditingController controller,
    final Color color,
    final double lableSize,
    final Color textColor,
    final Key key,
    final bool showLabel = true,
    final TextInputType keyboardType,
    final String initialValue,
    final FocusNode focusNode,
    final TextCapitalization textCapitalization = TextCapitalization.none,
    final TextInputAction textInputAction,
    final TextStyle style,
    final StrutStyle strutStyle,
    final TextDirection textDirection,
    final TextAlign textAlign = TextAlign.start,
    final TextAlignVertical textAlignVertical,
    final bool autofocus = false,
    final bool readOnly = false,
    final ToolbarOptions toolbarOptions,
    final bool showCursor,
    final String obscuringCharacter = '•',
    final bool obscureText = false,
    final bool autocorrect = true,
    final SmartDashesType smartDashesType,
    final SmartQuotesType smartQuotesType,
    final bool enableSuggestions = true,
    final bool maxLengthEnforced = true,
    final MaxLengthEnforcement maxLengthEnforcement,
    final int maxLines = 1,
    final int minLines,
    final bool expands = false,
    final int maxLength,
    final ValueChanged<String> onChanged,
    final GestureTapCallback onTap,
    final VoidCallback onEditingComplete,
    final ValueChanged<String> onFieldSubmitted,
    final FormFieldSetter<String> onSaved,
    final FormFieldValidator<String> validator,
    final List<TextInputFormatter> inputFormatters,
    final bool enabled,
    final double cursorWidth = 2.0,
    final double cursorHeight,
    final Radius cursorRadius,
    final Color cursorColor,
    final Brightness keyboardAppearance,
    final EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    final bool enableInteractiveSelection = true,
    final TextSelectionControls selectionControls,
    final InputCounterWidgetBuilder buildCounter,
    final ScrollPhysics scrollPhysics,
    final Iterable<String> autofillHints,
    final AutovalidateMode autovalidateMode,
  }) {
    return TextFiledMaterial(
      maxLengthEnforced: maxLengthEnforced,
      validator: validator,
      inputFormatters: inputFormatters,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textCapitalization: textCapitalization,
      selectionControls: selectionControls,
      scrollPhysics: scrollPhysics,
      strutStyle: strutStyle,
      textDirection: textDirection,
      autofillHints: autofillHints,
      autovalidateMode: autovalidateMode,
      buildCounter: buildCounter,
      enableInteractiveSelection: enableInteractiveSelection,
      maxLengthEnforcement: maxLengthEnforcement,
      scrollPadding: scrollPadding,
      textInputAction: textInputAction,
      keyboardAppearance: keyboardAppearance,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorWidth: cursorWidth,
      enabled: enabled,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      onChanged: onChanged,
      expands: expands,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      showCursor: showCursor,
      focusNodel: focusNode,
      toolbarOptions: toolbarOptions,
      enableSuggestions: enableSuggestions,
      autofocus: autocorrect,
      readOnly: readOnly,
      obscuringCharacter: obscuringCharacter,
      key: key,
      autocorrect: autocorrect,
      initialValue: initialValue,
      keyboardType: keyboardType,
      showLabel: showLabel,
      name: this,
      color: color,
      fontSize: fontSize,
      lableSize: lableSize,
      obscureText: obscureText,
      textColor: textColor,
      controller: controller,
    );
  }
}

extension ListViewBuilders on Function(BuildContext context, int index) {
  Widget xListVB({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget xListVBCSP({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget xListVBH({
    Key key,
    Axis scrollDirection = Axis.horizontal,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget xListVBHCSP({
    Key key,
    Axis scrollDirection = Axis.horizontal,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget xGridVB(
      {Key key,
      Axis scrollDirection = Axis.vertical,
      bool reverse = false,
      ScrollController controller,
      bool primary,
      ScrollPhysics physics,
      bool shrinkWrap = false,
      EdgeInsetsGeometry padding,
      @required int itemCount,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      double cacheExtent,
      int semanticChildCount,
      @required SliverGridDelegate gridDelegate}) {
    return GridView.builder(
      gridDelegate: gridDelegate,
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
    );
  }

  Widget xGridVBCSP(
      {Key key,
      Axis scrollDirection = Axis.vertical,
      bool reverse = false,
      ScrollController controller,
      bool primary,
      EdgeInsetsGeometry padding,
      @required int itemCount,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      double cacheExtent,
      int semanticChildCount,
      @required SliverGridDelegate gridDelegate}) {
    return GridView.builder(
      gridDelegate: gridDelegate,
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
    );
  }
}

/// The child Widget to animate. SlideAnimation
extension AnimationXs on Widget {
  Widget xExpandableText(
      {CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      Widget expand = const Text('More Details'),
      Widget unexpand = const Text('less Details'),
      double heightunexpand = 50.0}) {
    return ExpandableText(
      this,
      crossAxisAlignment: crossAxisAlignment,
      expand: expand,
      heightunexpand: heightunexpand,
      mainAxisAlignment: mainAxisAlignment,
      unexpand: unexpand,
    );
  }

  Widget xSA({
    final Key key,

    /// The duration of the child animation.
    final Duration duration,

    /// The delay between the beginning of two children's animations.
    final Duration delay,

    /// The vertical offset to apply at the start of the animation (can be negative).
    final double verticalOffset = 50.0,

    /// The horizontal offset to apply at the start of the animation (can be negative).
    final double horizontalOffset = 0.0,

    /// Creates a slide animation that slides its child from the given
    /// [verticalOffset] and [horizontalOffset] to its final position.
    ///
    /// A default value of 50.0 is applied to [verticalOffset] if
    /// [verticalOffset] and [horizontalOffset] are both undefined or null.
    ///
    /// The [child] argument must not be null.
  }) {
    return SlideAnimation(
        delay: delay,
        duration: duration,
        horizontalOffset: horizontalOffset,
        key: key,
        verticalOffset: verticalOffset,
        child: this);
  }

  /// The child Widget to animate. FadeInAnimation

  Widget xFA({
    /// The duration of the child animation.
    final Duration duration,

    /// The delay between the beginning of two children's animations.
    final Duration delay,
  }) {
    return FadeInAnimation(
      delay: delay,
      duration: duration,
      child: this,
    );
  }

  /// The child Widget to animate. ScaleAnimation

  Widget xSCA(
      {

      /// The duration of the child animation.
      final Duration duration,

      /// The delay between the beginning of two children's animations.
      final Duration delay,
      double scale = 0.0}) {
    return ScaleAnimation(
      delay: delay,
      scale: scale,
      duration: duration,
      child: this,
    );
  }

  /// The child Widget to animate. FlipAnimation

  Widget xFPA(
      {FlipAxis flipAxis = FlipAxis.x,

      /// The duration of the child animation.
      final Duration duration,

      /// The delay between the beginning of two children's animations.
      final Duration delay,
      double scale = 0.0}) {
    return FlipAnimation(
      delay: delay,
      flipAxis: flipAxis,
      duration: duration,
      child: this,
    );
  }
}

extension XButton on Widget {
  /// if u want elavation so pass value more tham 5
  Widget xButton(
      {double elavation,
      double rounded,
      double spreadRadius,
      Color color,
      Function onTap,
      double width,
      double height}) {
    return MaterialXButton(
        elavation: elavation,
        rounded: rounded,
        spreadRadius: spreadRadius,
        color: color,
        onTap: onTap,
        width: width,
        height: height,
        child: this);
  }
}

extension Win on String {
  Widget xTitle() {
    return XTitle(title: this);
  }

  Widget xTFM({TextEditingController controller, bool obscureText}) {
    return XContainer(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.all(10.0),
      rounded: 10,
      color: Colors.grey[100],
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter ' + this;
          }
          return null;
        },
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 20, color: Colors.black),
            contentPadding:
                EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
            hintText: ' ' + this,
            border: InputBorder.none),
      ),
    );
  }
}

extension Wins on Widget {
  Widget xExpanded({int flex = 1, Key key}) {
    return Expanded(
      flex: flex,
      key: key,
      child: this,
    );
  }

  Widget toAlign(
      {AlignmentGeometry alignment,
      double heightFactor,
      Key key,
      double widthFactor}) {
    return Align(
      alignment: alignment,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xAlign(
      {AlignmentGeometry alignment,
      double heightFactor,
      Key key,
      double widthFactor}) {
    return Align(
      alignment: alignment,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xBottomCenter({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xBottomRight({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.bottomRight,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xBottomLeft({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.bottomLeft,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xTopCenter({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.topCenter,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xTopLeft({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.topLeft,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xTopRight({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.topRight,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xCenterLeft({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.centerLeft,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xCenterRight({double heightFactor, Key key, double widthFactor}) {
    return Align(
      alignment: Alignment.centerRight,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget toMaterial({
    Key key,
    MaterialType type = MaterialType.canvas,
    double elevation = 0.0,
    Color color,
    Color shadowColor = const Color(0xFF000000),
    TextStyle textStyle,
    BorderRadiusGeometry borderRadius,
    ShapeBorder shape,
    bool borderOnForeground = true,
    Clip clipBehavior = Clip.none,
    Duration animationDuration = kThemeChangeDuration,
  }) {
    return Material(
      type: type,
      animationDuration: animationDuration,
      borderOnForeground: borderOnForeground,
      borderRadius: borderRadius,
      clipBehavior: clipBehavior,
      color: color,
      elevation: elevation,
      key: key,
      shadowColor: shadowColor,
      shape: shape,
      textStyle: textStyle,
      child: this,
    );
  }

  Widget xMaterial({
    Key key,
    MaterialType type = MaterialType.canvas,
    double elevation = 0.0,
    Color color,
    Color shadowColor = const Color(0xFF000000),
    TextStyle textStyle,
    BorderRadiusGeometry borderRadius,
    ShapeBorder shape,
    bool borderOnForeground = true,
    Clip clipBehavior = Clip.none,
    Duration animationDuration = kThemeChangeDuration,
  }) {
    return Material(
      type: type,
      animationDuration: animationDuration,
      borderOnForeground: borderOnForeground,
      borderRadius: borderRadius,
      clipBehavior: clipBehavior,
      color: color,
      elevation: elevation,
      key: key,
      shadowColor: shadowColor,
      shape: shape,
      textStyle: textStyle,
      child: this,
    );
  }

  Widget xCard(
      {double elevation,
      Color shadowColor,
      Color color,
      Function onTap,
      BorderRadiusGeometry borderRadius}) {
    return xContainer(
        padding: EdgeInsets.zero,
        blurRadius: elevation ?? 10,
        color: color ?? Colors.white,
        onTap: onTap,
        borderRadius: borderRadius,
        shadowColor: shadowColor ?? Colors.grey.withOpacity(0.5));
  }

  XRoutePage xRoutePage(BuildContext context) {
    return XRoutePage(context, this);
  }
}
