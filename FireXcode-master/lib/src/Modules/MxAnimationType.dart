import 'package:firexcode/animated_interpolation/fading.dart';
import 'package:firexcode/animated_interpolation/animated_config.dart';

enum XAnimationType {
  fadeIn,
  fadeOut,
  fadeInDown,
  fadeInUp,
  fadeInLeft,
  fadeInRight,
  fadeInDownBig,
  fadeInUpBig,
  fadeInLeftBig,
  fadeInRightBig,
  fadeOutDown,
  fadeOutUp,
  fadeOutLeft,
  fadeOutRight,
  fadeOutDownBig,
  fadeOutUpBig,
  fadeOutLeftBig,
  fadeOutRightBig
}

Map<double, AnimatedConfig> animationValue(value) {
  switch (value) {
    case XAnimationType.fadeIn:
      return fadeIn;
    case XAnimationType.fadeOut:
      return fadeOut;
    case XAnimationType.fadeInDown:
      return fadeInDown;
    case XAnimationType.fadeInUp:
      return fadeInUp;
    case XAnimationType.fadeInLeft:
      return fadeInLeft;
    case XAnimationType.fadeInRight:
      return fadeInRight;
    case XAnimationType.fadeInDownBig:
      return fadeInDownBig;
    case XAnimationType.fadeInUpBig:
      return fadeInUpBig;
    case XAnimationType.fadeInLeftBig:
      return fadeInLeftBig;
    case XAnimationType.fadeInRightBig:
      return fadeInRightBig;
    case XAnimationType.fadeOutUp:
      return fadeOutUp;
    case XAnimationType.fadeOutLeft:
      return fadeOutLeft;
    case XAnimationType.fadeOutRight:
      return fadeOutRight;
    case XAnimationType.fadeOutDownBig:
      return fadeOutDownBig;
    case XAnimationType.fadeOutUpBig:
      return fadeOutUpBig;
    case XAnimationType.fadeOutLeftBig:
      return fadeOutLeftBig;
    case XAnimationType.fadeOutRightBig:
      return fadeOutRightBig;

    default:
      return fadeIn;
  }
}
