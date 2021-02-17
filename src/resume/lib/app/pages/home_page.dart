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
      color: Colors.grey[100],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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

            _getOutline(context),
          ],
        ),
      ),
    );
  }

  Widget _getOutline(BuildContext context) {
    return Container(
      width: 1024,
      // height: 1280,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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
          children: [
            Container(height: 20),
            _getProfile(context),
            Divider(indent: 50, endIndent: 50),
            _getAbout(context),
            Container(height: 20),
            // _getSkills(),
            // _getExperiences(),
            // _getEducations(),
            // _getProjects(),
          ],
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 10),
                      Text("SJ Kim",
                          style: Theme.of(context).textTheme.headline3),
                      Container(height: 10),
                      Text(
                          "A gopher in the clouds | Software Developer at Egnyte",
                          style: Theme.of(context).textTheme.subtitle1),
                      Container(height: 10),
                      Text("Carlsbad, California",
                          style: Theme.of(context).textTheme.subtitle1),
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

  Widget _getAbout(BuildContext context) {
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
            margin: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About", style: Theme.of(context).textTheme.headline4),
                Container(height: 10),
                Text(
                    "Currently working in a cloud solution company as a full stack developer. Skilled in Go based back end, Flutter based front end, and cloud platforms. Strong engineering professional with a Master’s Degree focused in Electrical Computer Engineering from California State University-Los Angeles.",
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.justify),
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
