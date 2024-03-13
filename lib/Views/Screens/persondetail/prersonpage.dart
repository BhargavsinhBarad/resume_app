import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class persondetail extends StatefulWidget {
  const persondetail({super.key});

  @override
  State<persondetail> createState() => _persondetailState();
}

class _persondetailState extends State<persondetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "Person Detail",
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
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introduction",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.about = val;
                },
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "About your information..",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "DOB",
                style: Global.style3,
              ),
              SizedBox(
                height: 3,
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                onChanged: (val) {
                  Global.datetime = val;
                },
                decoration: InputDecoration(
                    hintText: "DD/MM/YYYY", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Marital Status",
                style: Global.style3,
              ),
              RadioListTile(
                  activeColor: Global.themecolor,
                  title: Text("Single"),
                  value: "single",
                  groupValue: Global.maritalstatus,
                  onChanged: (val) {
                    setState(() {
                      Global.maritalstatus = val;
                    });
                  }),
              RadioListTile(
                activeColor: Global.themecolor,
                title: Text("Married"),
                value: "marride",
                groupValue: Global.maritalstatus,
                onChanged: (val) {
                  setState(() {
                    Global.maritalstatus = val;
                  });
                },
              ),
              Text(
                "Languages Known",
                style: Global.style3,
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.english,
                      onChanged: (val) {
                        setState(() {
                          Global.english = val;
                        });
                      }),
                  Text("English"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.hindi,
                      onChanged: (val) {
                        setState(() {
                          Global.hindi = val;
                        });
                      }),
                  Text("Hindi"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Global.textcolor,
                      activeColor: Global.themecolor,
                      value: Global.gujarati,
                      onChanged: (val) {
                        setState(() {
                          Global.gujarati = val;
                        });
                      }),
                  Text("Gujarati"),
                ],
              ),
              Text(
                "Nationality",
                style: Global.style3,
              ),
              TextFormField(
                onChanged: (val) {
                  Global.nation = val;
                },
                decoration: const InputDecoration(
                    hintText: "Indian", border: OutlineInputBorder()),
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
