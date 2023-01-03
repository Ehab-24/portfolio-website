import 'dart:math';

import 'package:flutter/material.dart';
import 'package:protfolio_website/extension_methods.dart';
import 'package:protfolio_website/presentation/globals/colors.dart';

class MPageView extends StatefulWidget {
  const MPageView({
    super.key,
    required this.children,
    required this.indexNotifier,
  });

  final List<Widget> children;
  final ValueNotifier<int> indexNotifier;

  @override
  State<MPageView> createState() => _MPageViewState();
}

class _MPageViewState extends State<MPageView>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  late Widget currentChild;
  bool isNextChild = true;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOutQuad);
    controller.addListener(() {
      setState(() {
        if (controller.value > 0.65 && !isNextChild) {
          isNextChild = true;
          widget.indexNotifier.value++;
          if (widget.indexNotifier.value == widget.children.length) {
            widget.indexNotifier.value = 0;
          }
          currentChild = widget.children[widget.indexNotifier.value];
        }
      });
    });
    controller.forward();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    currentChild = widget.children[widget.indexNotifier.value];
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const h = 830.0;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w * 0.5,
      height: h * 0.85,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: 100,
            left: 60,
            child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, -0.001)
                    ..rotateX(animation.value * 2 * pi),
                  alignment: Alignment.center,
                  child: child,
                );
              },
              child: currentChild,
            ),
          ),
          Positioned(
            right: 0,
            top: w <= 600? 40: null,
            bottom: w <= 600? null: 60,
            child: GestureDetector(
              onTap: () {
                if (controller.isAnimating) {
                  return;
                }
                isNextChild = false;
                controller.reset();
                controller.forward();
              },
              child: Transform.scale(
                scaleX: 2,
                child: const Icon(
                  Icons.arrow_forward,
                  color: primary,
                ),
              ),
            ).withTranslateOnHover(-0.2).withScaleOnHover(1.25),
          ),
        ],
      ),
    );
  }
}
