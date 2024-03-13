import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class eductionpage extends StatelessWidget {
  const eductionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "Eduction",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course/Degree",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.course = val;
                },
                decoration: InputDecoration(
                    hintText: "B.Tech Information Technology",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "School/College/Institute",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.school = val;
                },
                decoration: InputDecoration(
                    hintText: "Bhagvan Mahavir University",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "School/College/Institute",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.cgpa = val;
                },
                decoration: InputDecoration(
                    hintText: "70% (or) 7.0 CGPA",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Year of Pass",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.year = val;
                },
                decoration: InputDecoration(
                  hintText: "2019",
                  border: OutlineInputBorder(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: Get.height * 0.09,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Global.textcolor),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Global.themecolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
