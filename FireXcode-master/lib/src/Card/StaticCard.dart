import 'package:firexcode/firexcode.dart';

class XStaticCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final Widget title;
  final Widget value;
  final EdgeInsetsGeometry padding;
  final Color shadowColor;
  final double rounded;
  final double blurRadius;
  final double spreadRadius;
  final Function onTap;
  final Color cicleColor;
  final EdgeInsetsGeometry margin;
  final Color bgColor;
  const XStaticCard(
      {Key key,
      this.width,
      this.padding,
      this.shadowColor,
      this.rounded,
      this.blurRadius,
      this.spreadRadius,
      this.onTap,
      this.margin,
      @required this.icon,
      @required this.title,
      @required this.value,
      @required this.cicleColor,
      this.bgColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      decoration: BoxDecoration(
          color: bgColor,
          boxShadow: [
            BoxShadow(
                color: shadowColor == null
                    ? Colors.white
                    : shadowColor.withOpacity(0.4),
                blurRadius: blurRadius ?? 0,
                spreadRadius: spreadRadius ?? 0.0,
                offset: Offset(0, 9)),
          ],
          // color: shadowColor,
          borderRadius: BorderRadius.circular(rounded ?? 0)),
      child: Material(
          color: bgColor != null ? Colors.transparent : bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded ?? 0)),
          child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: padding ?? EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: cicleColor.withOpacity(0.2),
                      child: Icon(
                        icon,
                        size: 30,
                        color: cicleColor,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    title,
                    value
                  ],
                ),
              ))),
    );
  }
}

class XCustomStatic extends StatelessWidget {
  final double width;
  final Widget title;
  final Widget value;
  final EdgeInsetsGeometry padding;
  final List<BoxShadow> boxShadow;
  final double rounded;
  final Function onTap;
  final EdgeInsetsGeometry margin;
  final double spaceHeight;
  final Color bgColor;
  final Widget child;
  const XCustomStatic(
      {Key key,
      this.width,
      this.boxShadow,
      this.padding,
      this.rounded,
      this.onTap,
      this.margin,
      this.title,
      @required this.value,
      this.spaceHeight = 10.0,
      this.bgColor = Colors.white,
      this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      decoration: BoxDecoration(
          color: bgColor,
          boxShadow: boxShadow,
          // color: shadowColor,
          borderRadius: BorderRadius.circular(rounded ?? 0)),
      child: Material(
          color: bgColor != null ? Colors.transparent : bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded ?? 0)),
          child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: padding ?? EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    child,
                    spaceHeight.sizedHeight(),
                    title ??
                        Container(
                          width: 1,
                        ),
                    value
                  ],
                ),
              ))),
    );
  }
}
