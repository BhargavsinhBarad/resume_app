import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class projectpage extends StatefulWidget {
  const projectpage({super.key});

  @override
  State<projectpage> createState() => _projectpageState();
}

class _projectpageState extends State<projectpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        title: Text(
          "Project",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        foregroundColor: Global.textcolor,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Title",
                style: Global.style3,
              ),
              TextFormField(
                onChanged: (val) {
                  setState(() {
                    Global.titl = val;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Resumne Builder App",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Framework ",
                style: Global.style3,
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.c,
                      onChanged: (val) {
                        setState(() {
                          Global.c = val;
                        });
                      }),
                  Text("C Programming"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.cp,
                      onChanged: (val) {
                        setState(() {
                          Global.cp = val;
                        });
                      }),
                  Text("C++"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.flutter,
                      onChanged: (val) {
                        setState(() {
                          Global.flutter = val;
                        });
                      }),
                  Text("Flutter"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.android,
                      onChanged: (val) {
                        setState(() {
                          Global.android = val;
                        });
                      }),
                  Text("Android"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.ios,
                      onChanged: (val) {
                        setState(() {
                          Global.ios = val;
                        });
                      }),
                  Text("Ios"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.web,
                      onChanged: (val) {
                        setState(() {
                          Global.web = val;
                        });
                      }),
                  Text("Web"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.front,
                      onChanged: (val) {
                        setState(() {
                          Global.front = val;
                        });
                      }),
                  const Text("Frontend"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.back,
                      onChanged: (val) {
                        setState(() {
                          Global.back = val;
                        });
                      }),
                  const Text("Backend"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Roles",
                style: Global.style3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.roles = val;
                },
                decoration: InputDecoration(
                    hintText: "Organize team members,code",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Technologies",
                style: Global.style3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.tecono = val;
                },
                decoration: InputDecoration(
                    hintText: "5 - programmers", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Project Descripation",
                style: Global.style3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.des = val;
                },
                decoration: InputDecoration(
                    hintText: "Enter your Project Descripation",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
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
