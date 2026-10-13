import 'package:get/get.dart';

import '../../../app/routes/app_routes.dart';
import '../../../data/models/screen_demo_model.dart';

class HomeController extends GetxController {
  final demos = <ScreenDemoModel>[
    const ScreenDemoModel(
      id: 'sample_fade',
      title: 'Sample Fade',
      subtitle: 'Soft fade-in hero with flutter_animate',
      route: AppRoutes.sampleFade,
      tags: ['fade', 'flutter_animate', 'starter'],
    ),
  ].obs;

  void openDemo(ScreenDemoModel demo) {
    Get.toNamed(demo.route);
  }
}
