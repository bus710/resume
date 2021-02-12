import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutPage extends StatelessWidget {
  final String title = "Resume";

  AboutPage();

  @override
  Widget build(BuildContext context) {
    // This get.put should stay in the build function
    final AboutPageController controller = Get.put(AboutPageController());
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                controller.getToHome();
              },
              child: Text('To home'),
            ),
          ],
        ),
      ),
    );
  }
}
