import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Lightweight shared entrance wrapper for demo screens.
class AnimatedEntrance extends StatelessWidget {
  const AnimatedEntrance({
    super.key,
    required this.child,
    this.delay = Duration.zero,
    this.duration = const Duration(milliseconds: 550),
  });

  final Widget child;
  final Duration delay;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return child
        .animate(delay: delay)
        .fadeIn(duration: duration, curve: Curves.easeOut)
        .moveY(begin: 14, end: 0, duration: duration, curve: Curves.easeOutCubic);
  }
}
