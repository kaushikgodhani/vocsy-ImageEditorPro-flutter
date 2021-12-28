import 'package:firexcode/firexcode.dart';

extension Colorx on int {
  Color xColors() {
    return Color(this);
  }

  Widget xSizedHeight() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget xSizedHeightWidth() {
    return SizedBox(
      height: toDouble(),
      width: toDouble(),
    );
  }

  Widget xSizedWidth() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
