import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Screens/detailspage/detailspage.dart';

import '../../Utils/global.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        title: Center(
          child: Column(
            children: [
              Text(
                "Resume Builder",
                style: TextStyle(
                    color: Global.textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "RESUMES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Global.textcolor,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Global.themecolor,
        onPressed: () {
          Get.toNamed("/detail");
        },
        child: Icon(
          Icons.add,
          color: Global.textcolor,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 90,
            child: Center(
              child: Image.asset("lib/Assets/Image/box.png"),
            ),
          ),
          Text(
            "No Resumes + Create New Resume.",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
