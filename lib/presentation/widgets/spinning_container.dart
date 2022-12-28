import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SpinningContainer extends StatefulWidget {
  const SpinningContainer({
    super.key,
    required this.duration,
    required this.children,
  });

  final List<Widget> children;
  final Duration duration;

  @override
  State<SpinningContainer> createState() => _SpinningContainerState();
}

class _SpinningContainerState extends State<SpinningContainer>
    with SingleTickerProviderStateMixin {
  
  int index = 0;
  late final Timer timer;
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 4), (_) {
      controller.reset();
      controller.forward();
      Future<void>.delayed(
        const Duration(milliseconds: 370),
        () => setState(
          () => index = (index + 1) % widget.children.length,
        ),
      );
    });
    controller = AnimationController(vsync: this, duration: widget.duration);
    animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOutQuad);
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, -0.001)
          ..rotateX(animation.value * 2 * pi),
        alignment: Alignment.center,
        child: child,
      ),
      child: widget.children[index],
    );
  }
}
