import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/home_binding.dart';
import 'app/bindings/about_binding.dart';
import 'app/pages/home_page.dart';
import 'app/pages/about_page.dart';
import 'app/services/timer_service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      transitionDuration: Duration(milliseconds: 10),
      initialRoute: "home",
      getPages: [
        GetPage(name: "home", page: () => HomePage(), binding: HomeBinding()),
        GetPage(
            name: "about", page: () => AboutPage(), binding: AboutBinding()),
      ],
    );
  }
}
