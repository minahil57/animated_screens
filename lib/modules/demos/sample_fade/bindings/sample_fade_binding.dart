import 'package:get/get.dart';

import '../controllers/sample_fade_controller.dart';

class SampleFadeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SampleFadeController>(SampleFadeController.new);
  }
}
