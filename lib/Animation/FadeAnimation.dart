import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(
    this.delay,
    this.child, {
    super.key,
    required Duration duration,
  });

  @override
  Widget build(BuildContext context) {
    final tween =
        MovieTween()
          ..tween(
            'opacity',
            Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          )
          ..tween(
            'translateY',
            Tween<double>(begin: 30.0, end: 0.0),
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );

    return CustomAnimationBuilder<Movie>(
      control: Control.play,
      delay: Duration(milliseconds: (delay * 500).round()),
      duration: tween.duration,
      tween: tween,
      builder: (context, value, _) {
        final opacity = value.get<double>('opacity');
        final translateY = value.get<double>('translateY');
        return Opacity(
          opacity: opacity,
          child: Transform.translate(
            offset: Offset(0, translateY),
            child: child,
          ),
        );
      },
    );
  }
}
