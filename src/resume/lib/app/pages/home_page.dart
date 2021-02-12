import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final String title = "Resume";

  HomePage();

  @override
  Widget build(BuildContext context) {
    // This get.put should stay in the build function
    final HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.count.toString())),
            Container(height: 20),
            FlatButton(
              onPressed: () {
                controller.increment()();
              },
              child: Text('Add 1'),
            ),
            Container(height: 20),
            FlatButton(
              onPressed: () {
                controller.getToAbout();
              },
              child: Text('To about'),
            ),
          ],
        ),
      ),
    );
  }
}
