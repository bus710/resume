import 'package:get/get.dart';
import '../pages/about_page.dart';
import '../services/timer_service.dart';

class HomePageController extends GetxController {
  final count = 0.obs;
  final TimerService t = Get.find<TimerService>();

  increment() => count.value++;
  getToAbout() => Get.off<AboutPage>(AboutPage());

  @override
  void onInit() async {
    super.onInit();
    print("onInit - $runtimeType");
    t.unregisterAll();
    t.register(handler);
  }

  @override
  void onReady() async {
    super.onReady();
    print("onReady - $runtimeType");
  }

  @override
  void onClose() async {
    print("onClose - $runtimeType");
    super.onClose();
  }

  void handler() {
    print("handler - $runtimeType");
  }
}
