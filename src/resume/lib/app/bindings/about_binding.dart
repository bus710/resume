import 'package:get/get.dart';

import '../controllers/about_controller.dart';
// import '../services/timer_service.dart';

class AboutBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AboutPageController>(AboutPageController());
  }
}
