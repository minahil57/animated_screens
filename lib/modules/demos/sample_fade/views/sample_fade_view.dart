import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../controllers/sample_fade_controller.dart';

class SampleFadeView extends GetView<SampleFadeController> {
  const SampleFadeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Fade'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          theme.colorScheme.primary,
                          theme.colorScheme.primary.withValues(alpha: 0.35),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 700.ms, curve: Curves.easeOut)
                      .scale(
                        begin: const Offset(0.82, 0.82),
                        end: const Offset(1, 1),
                        duration: 700.ms,
                        curve: Curves.easeOutCubic,
                      ),
                  const SizedBox(height: 36),
                  Text(
                    controller.headline.value,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.4,
                    ),
                  )
                      .animate()
                      .fadeIn(delay: 180.ms, duration: 650.ms)
                      .moveY(begin: 16, end: 0, delay: 180.ms, duration: 650.ms),
                  const SizedBox(height: 12),
                  Text(
                    controller.caption.value,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.65),
                      height: 1.45,
                    ),
                  )
                      .animate()
                      .fadeIn(delay: 320.ms, duration: 700.ms)
                      .moveY(begin: 12, end: 0, delay: 320.ms, duration: 700.ms),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
