import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarGadient extends StatefulWidget implements PreferredSizeWidget {
  AppbarGadient(
      {Key key,
      this.backgroundColor,
      this.leading,
      this.automaticallyImplyLeading = true,
      this.title,
      this.actions,
      this.gradient,
      this.bottom,
      this.elevation,
      this.shape,
      this.brightness,
      this.iconTheme,
      this.actionsIconTheme,
      this.textTheme,
      this.primary = true,
      this.centerTitle,
      this.titleSpacing = NavigationToolbar.kMiddleSpacing,
      this.toolbarOpacity = 1.0,
      this.bottomOpacity = 1.0,
      this.image,
      this.excludeHeaderSemantics = false,
      this.backwardsCompatibility = false,
      this.foregroundColor,
      this.leadingWidth,
      this.shadowColor,
      this.systemOverlayStyle,
      this.titleTextStyle,
      this.toolbarHeight,
      this.toolbarTextStyle})
      : assert(automaticallyImplyLeading != null),
        assert(elevation == null || elevation >= 0.0),
        assert(primary != null),
        assert(titleSpacing != null),
        assert(toolbarOpacity != null),
        assert(bottomOpacity != null),
        assert(excludeHeaderSemantics != null),
        assert(backwardsCompatibility != null),
        preferredSize = Size.fromHeight(
            kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
        super(key: key);

  @override
  _AppbarGadientState createState() => _AppbarGadientState();
  final Color backgroundColor;

  final Widget leading;
  final bool automaticallyImplyLeading;
  final Widget title;
  final List<Widget> actions;
  final Gradient gradient;
  final PreferredSizeWidget bottom;
  final double elevation;
  final ShapeBorder shape;
  final Brightness brightness;
  final IconThemeData iconTheme;
  final IconThemeData actionsIconTheme;
  final TextTheme textTheme;
  final bool primary;
  final bool centerTitle;
  final double titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final DecorationImage image;

  /// {@template flutter.material.appbar.excludeHeaderSemantics}
  /// Whether the title should be wrapped with header [Semantics].
  ///
  /// Defaults to false.
  /// {@endtemplate}
  final bool excludeHeaderSemantics;
  final bool backwardsCompatibility;

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
  final Color foregroundColor;

  /// {@template flutter.material.appbar.leadingWidth}
  /// Defines the width of [leading] widget.
  ///
  /// By default, the value of `leadingWidth` is 56.0.
  /// {@endtemplate}
  final double leadingWidth;

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
  final Color shadowColor;

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
  final SystemUiOverlayStyle systemOverlayStyle;

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
  final TextStyle titleTextStyle;

  /// {@template flutter.material.appbar.toolbarHeight}
  /// Defines the height of the toolbar component of an [AppBar].
  ///
  /// By default, the value of `toolbarHeight` is [kToolbarHeight].
  /// {@endtemplate}
  final double toolbarHeight;

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
  final TextStyle toolbarTextStyle;
  @override
  final Size preferredSize;
  bool getEffectiveCenterTitle(ThemeData theme) {
    if (centerTitle != null) return centerTitle;
    assert(theme.platform != null);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:

      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return false;
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return actions == null || actions.length < 2;
    }
    return null;
  }
}

class _AppbarGadientState extends State<AppbarGadient> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: widget.key,
      shadowColor: widget.shadowColor,
      titleTextStyle: widget.titleTextStyle,
      toolbarHeight: widget.toolbarHeight,
      toolbarTextStyle: widget.toolbarTextStyle,
      systemOverlayStyle: widget.systemOverlayStyle,
      leadingWidth: widget.leadingWidth,
      foregroundColor: widget.foregroundColor,
      backwardsCompatibility: widget.backwardsCompatibility,
      excludeHeaderSemantics: widget.excludeHeaderSemantics,
      backgroundColor: widget.backgroundColor,
      actions: widget.actions,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      actionsIconTheme: widget.actionsIconTheme,
      centerTitle: widget.centerTitle,
      title: widget.title,
      bottom: widget.bottom,
      bottomOpacity: widget.bottomOpacity,
      toolbarOpacity: widget.toolbarOpacity,
      titleSpacing: widget.titleSpacing,
      iconTheme: widget.iconTheme,
      brightness: widget.brightness,
      elevation: widget.elevation,
      leading: widget.leading,
      primary: widget.primary,
      shape: widget.shape,
      textTheme: widget.textTheme,
      flexibleSpace: Container(
          decoration:
              BoxDecoration(gradient: widget.gradient, image: widget.image)),
    );
  }
}

/* 
TwoButton(
                ontap2: (){},
                text2: 'Recive',
                color2: Color(0xFF0049f5),
                height: 20,
                color1: Color(0xFFfc035e),
                ontap1: (){},
                text1: 'Send',
                rounded: 10,
                elavation: 10,
                )
*/
