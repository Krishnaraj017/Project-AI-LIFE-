
import 'package:flutter/material.dart';

import 'fancy_loader.dart';

class FancyLoaderState extends State<FancyLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    switch (widget.animationType) {
      case AnimationType.gradient:
        animation = Tween(begin: 0.0, end: 1.0).animate(controller);
        break;
      case AnimationType.pulsing:
        animation = Tween(begin: 1.0, end: 2.0).animate(
          CurvedAnimation(parent: controller, curve: Curves.easeInOut),
        );
        break;
      case AnimationType.rotating:
        animation = Tween(begin: 0.0, end: 1.0).animate(controller);
        break;
    }

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          switch (widget.animationType) {
            case AnimationType.gradient:
              return Container(
                width: widget.size * 1.5,
                height: widget.size,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(animation.value),
                      Colors.green.withOpacity(animation.value),
                    ],
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(widget.size / 2),
                ),
              );
            case AnimationType.pulsing:
              return Container(
                width: widget.size * animation.value,
                height: widget.size * animation.value,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              );
            case AnimationType.rotating:
              return Transform.rotate(
                angle: animation.value * (3.1415927 * 2.0), // Full rotation
                child: Container(
                  width: widget.size,
                  height: widget.size,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green.withOpacity(animation.value),
                        Colors.red.withOpacity(animation.value),
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
