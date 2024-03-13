import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';
import '../../Utils/list.dart';

class detailspage extends StatefulWidget {
  const detailspage({super.key});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Center(
          child: Column(
            children: [
              Text(
                "Resume Workspace",
                style: TextStyle(
                    color: Global.textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Build option",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Global.textcolor,
                  fontSize: 22,
                ),
              ),
            ],
          ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Global.themecolor,
        onPressed: () {
          (Global.file == null)
              ? Get.snackbar("Resume Builder", "Enter Photo First",
                  backgroundColor: Colors.black.withOpacity(0.5),
                  colorText: Colors.white)
              : Get.toNamed("/pdf");
        },
        child: Icon(
          Icons.picture_as_pdf,
          color: Global.textcolor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...myoptions
                .map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.1,
                            margin: const EdgeInsets.all(5),
                            child: Image.asset(
                              "${e['icon']}",
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Text(
                            e['name'],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Get.toNamed("${e['route_name']}");
                            },
                            icon: const Icon(
                              CupertinoIcons.forward,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 3,
                      )
                    ],
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
