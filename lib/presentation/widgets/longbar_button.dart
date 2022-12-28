import 'package:flutter/material.dart';
import 'package:protfolio_website/presentation/globals/constants.dart';

import '../globals/styles.dart';

class LongbarButton extends StatefulWidget {
  const LongbarButton({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundDecoration,
    required this.onPressed,
    this.textColor = Colors.white,
    this.title = '',
    this.content = '',
    this.foregroundColor = Colors.grey,
    this.borderRadius = BorderRadius.zero,
  });

  final double width, height;
  final Color foregroundColor, textColor;
  final String title, content;
  final DecorationImage backgroundDecoration;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;

  @override
  State<LongbarButton> createState() => _LongbarButtonState();
}

class _LongbarButtonState extends State<LongbarButton> {
  bool isHovering = false;

  Matrix4 hoverTransform = Matrix4.identity()..scale(1.1, 1.1);
  Matrix4 defaultTransform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setIsHovering(true),
      onExit: (_) => _setIsHovering(false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            boxShadow: List<BoxShadow>.generate(
              isHovering ? 4 : 2,
              (index) => BoxShadow(
                blurRadius: 5.0 * index,
                color: Colors.black45,
                offset: Offset(0, index * 2.0),
              ),
            ),
          ),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: widget.borderRadius,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                AnimatedContainer(
                  duration: d200,
                  curve: Curves.easeOutQuad,
                  width: widget.width,
                  height: widget.height,
                  alignment: Alignment.center,
                  transformAlignment: Alignment.center,
                  transform: isHovering ? hoverTransform : defaultTransform,
                  decoration: BoxDecoration(
                    image: widget.backgroundDecoration,
                  ),
                  child: Transform.scale(
                    scale: 1 / 1.25,
                    child: Text(
                      widget.content,
                      textAlign: TextAlign.center,
                      style: Styles.bodySmall(),
                    ),
                  ),
                ),
                AnimatedSlide(
                  offset: isHovering ? const Offset(1, 0) : Offset.zero,
                  duration: d150,
                  curve: Curves.decelerate,
                  child: Container(
                    width: widget.width,
                    height: widget.height,
                    color: widget.foregroundColor,
                  ),
                ),
                AnimatedScale(
                  scale: isHovering ? 1.0 : 0.6,
                  duration: d150,
                  curve: Curves.easeOutCubic,
                  child: Text(
                    widget.title.toUpperCase(),
                    style: TextStyle(
                        color: isHovering ? Colors.white : Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setIsHovering(bool val) => setState(() {
        isHovering = val;
      });
}
