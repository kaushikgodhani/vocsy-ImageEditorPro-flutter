import 'package:firexcode/firexcode.dart';

extension ShapeX on BorderRadiusGeometry {
  ShapeBorder xShapeBorder({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: this, side: side);
  }
}
