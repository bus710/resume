import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../services/timer_service.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomePageController>(HomePageController());
    Get.find<TimerService>();
  }
}
