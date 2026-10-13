import 'package:get/get.dart';

import '../../modules/demos/sample_fade/bindings/sample_fade_binding.dart';
import '../../modules/demos/sample_fade/views/sample_fade_view.dart';
import '../../modules/home/bindings/home_binding.dart';
import '../../modules/home/views/home_view.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.sampleFade,
      page: () => const SampleFadeView(),
      binding: SampleFadeBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
