import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/constants.dart';

extension WidgetExtension on Widget {
  Widget withTranslateOnHover([double offsetY = -0.05]) =>
      TranslateOnHover(offsetY: offsetY, child: this);

  Widget withScaleOnHover([double scale = 1.05]) =>
      ScaleOnHover(scale: scale, child: this);
}

class TranslateOnHover extends StatefulWidget {
  const TranslateOnHover({
    super.key,
    required this.offsetY,
    required this.child,
  });

  final double offsetY;
  final Widget child;

  @override
  State<TranslateOnHover> createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setIsHovering(true),
      onExit: (_) => _setIsHovering(false),
      cursor: SystemMouseCursors.click,
      child: AnimatedSlide(
        offset: isHovering ? Offset(0, widget.offsetY) : Offset.zero,
        duration: d150,
        curve: Curves.easeOutQuad,
        child: widget.child,
      ),
    );
  }

  void _setIsHovering(bool val) {
    setState(() {
      isHovering = val;
    });
  }
}

class ScaleOnHover extends StatefulWidget {
  const ScaleOnHover({
    super.key,
    required this.scale,
    required this.child,
  });

  final double scale;
  final Widget child;

  @override
  State<ScaleOnHover> createState() => _ScaleOnHoverState();
}

class _ScaleOnHoverState extends State<ScaleOnHover> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setIsHovering(true),
      onExit: (_) => _setIsHovering(false),
      cursor: SystemMouseCursors.click,
      child: AnimatedScale(
        duration: d150,
        curve: Curves.easeOutQuad,
        scale: isHovering? widget.scale: 1.0,
        child: widget.child,
      ),
    );
  }

  void _setIsHovering(bool val) {
    setState(() {
      isHovering = val;
    });
  }
}
