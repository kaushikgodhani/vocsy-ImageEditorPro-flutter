import 'package:firexcode/animated_interpolation/animated_config.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firexcode/src/Modules/MxAnimationType.dart';
import 'package:firexcode/src/Modules/animation/animation_do.dart';

extension XWidget on Widget {
  Widget xFlexable({FlexFit fit = FlexFit.loose, int flex = 1, Key key}) {
    return Flexible(fit: fit, flex: flex, key: key, child: this);
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view NeverScrollableScrollPhysics
  Widget xSingleChildScroolViewNeverScrollableScrollPhysics(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: NeverScrollableScrollPhysics(),
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view
  Widget xSingleChildScroolViewClampingScrollPhysics(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: ClampingScrollPhysics(),
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view
  Widget xSingleChildScroolView(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      ScrollPhysics physics,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: physics,
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Center
  Widget toCenter({double widthFactor, double heightFactor, Key key}) {
    return Center(
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Widget xCenter({double widthFactor, double heightFactor, Key key}) {
    return Center(
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  //------------------------------------------------------------------------- all animation entension
  Widget animation(
      {from,
      to,
      @required XAnimationType configMap,
      curve,
      duration = const Duration(seconds: 1),
      @required autoPlay,
      onAnimationEnd,
      onAnimationBegin,
      iterationCount = 1,
      iterationInfinite = false,
      direction = AnimatedDirection.normal,
      delay = const Duration(seconds: 0),
      iterationDelay = const Duration(seconds: 0)}) {
    return SmartAnimatedWidget(
        autoPlay: autoPlay,
        configMap: animationValue(configMap),
        curve: curve,
        delay: delay,
        direction: direction,
        duration: duration,
        from: from,
        iterationCount: iterationCount,
        iterationDelay: iterationDelay,
        iterationInfinite: iterationInfinite,
        onAnimationBegin: onAnimationBegin,
        onAnimationEnd: onAnimationEnd,
        to: to,
        child: this);
  }

  Widget fadeIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeIn(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInDown(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInDownBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInDownBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInUp(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInUpBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInUpBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInLeft(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInLeftBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInLeftBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInRight(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeInRightBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInRightBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  //-------------------------------------------------------------------------------------------------

  Widget fadeOut(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOut(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutDown(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutDownBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutDownBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutUp(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutUpBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutUpBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutLeft(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutLeftBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutLeftBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutRight(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget fadeOutRightBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutRightBig(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  //---------------------------------------------------------------------------------------
  Widget bounceInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInDown(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget bounceInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInUp(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget bounceInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInLeft(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget bounceInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInRight(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget elasticIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticIn(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget elasticInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInDown(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget elasticInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInUp(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget elasticInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInLeft(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget elasticInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInRight(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget slideInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInDown(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget slideInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInUp(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget slideInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInLeft(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget slideInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInRight(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget flipInX(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FlipInX(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget flipInY(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FlipInY(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget zoomIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double form = 1.0}) {
    return ZoomIn(
      from: form,
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget zoomOut(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double form = 0.0}) {
    return ZoomOut(
      from: form,
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget jelloIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return JelloIn(
      animate: animate,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget bounce(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double from = 50,
      bool infinite = false}) {
    return Bounce(
      animate: animate,
      from: from,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget flash(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Flash(
      animate: animate,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget pulse(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Pulse(
      animate: animate,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget swing(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Swing(
      animate: animate,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget spin(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return Spin(
      animate: animate,
      spins: spins,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget spinPerfect(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return SpinPerfect(
      animate: animate,
      spins: spins,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget dance(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Dance(
      animate: animate,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }

  Widget roulette(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return Roulette(
      spins: spins,
      animate: animate,
      infinite: infinite,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
      child: this,
    );
  }
}
