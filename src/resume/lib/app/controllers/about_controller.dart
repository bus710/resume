import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../services/timer_service.dart';

class AboutPageController extends GetxController {
  final count = 0.obs;
  final TimerService t = Get.find<TimerService>();

  increment() => count.value++;
  getToHome() => Get.off<HomePage>(HomePage());

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
    print("handler - $runtimeType ");
  }
}
