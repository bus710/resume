import 'dart:async'; // for streams
import 'package:get/get.dart';

Future initServices() async {
  print("Init services");
  await Get.putAsync(() => TimerService().init());
}

class TimerService extends GetxService {
  Timer _timer;
  Function _f;

  Future<TimerService> init() async {
    _timer = Timer.periodic(Duration(milliseconds: 10000), _timerHandler);
    _f = null;
    return this;
  }

  void _timerHandler(Timer timer) async {
    if (_f != null) _f();
    print(DateTime.now());
  }

  void unregisterAll() {
    _f = null;
  }

  void register(Function f) {
    _f = f;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _timer.cancel();
    super.onClose();
  }
}
