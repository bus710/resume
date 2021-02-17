// import 'dart:js';

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
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: _getBody(context, controller),
    );
  }

  Widget _getBody(BuildContext context, HomePageController controller) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Obx(() => Text(controller.count.toString())),
            // Container(height: 20),
            // FlatButton(
            //   onPressed: () {
            //     controller.increment();
            //   },
            //   child: Text('Add 1'),
            // ),
            // Container(height: 20),
            // FlatButton(
            //   onPressed: () {
            //     controller.getToAbout();
            //   },
            //   child: Text('To about'),
            // ),

            // _getProfile(context),
            // _getSkills(),
            // _getExperiences(),
            // _getEducations(),
            // _getProjects(),
            _getOutline(context),
          ],
        ),
      ),
    );
  }

  Widget _getOutline(BuildContext context) {
    return Container(
      width: 1024,
      height: 1280,
      padding: EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [_getProfile(context)],
        ),
      ),
    );
  }

  Widget _getProfile(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 768, maxWidth: 1024),
        child: Center(
          child: Container(
            color: Colors.white,
            width: 1024,
            height: 180,
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(width: 30),
                Container(
                    width: 170,
                    height: 170,
                    child: Center(
                      child: Placeholder(),
                    )),
                Container(width: 30),
                Expanded(
                  child: Column(
                    children: [
                      Text("Profile"),
                    ],
                  ),
                ),
                Container(width: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getSkills() {
    return Container(child: Text("Skills"));
  }

  Widget _getExperiences() {
    return Container(child: Text("Experiences"));
  }

  Widget _getEducations() {
    return Container(child: Text("Educations"));
  }

  Widget _getProjects() {
    return Container(child: Text("Projects"));
  }
}
