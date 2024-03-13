import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/global.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  void initState() {
    super.initState();
    Global.AllController.add(TextEditingController());

    Global.AllTextFields.add(Row());
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Global.themecolor,
        title: Text(
          "Achievements",
          style: TextStyle(
            color: Global.textcolor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
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
        foregroundColor: Global.textcolor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Enter Achievement", style: Global.style3),
                      SizedBox(
                        height: 30,
                      ),
                      ...Global.AllTextFields.map(
                        (e) => getTextFiled(
                          i: Global.AllTextFields.indexOf(
                            (e),
                          ),
                        ),
                      ).toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              Global.AllController.add(TextEditingController());
                              Global.AllTextFields.add(
                                  getTextFiled(i: Global.AllTextFields.length));
                            },
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Global.themecolor.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Global.themecolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row getTextFiled({required int i}) {
    return Row(children: [
      Expanded(
        flex: 10,
        child: TextField(
          controller: Global.AllController[i],
          decoration: InputDecoration(
            hintText: "Enter your Certificate..",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: IconButton(
          onPressed: () {
            setState(
              () {
                Global.AllController.removeAt(i);
                Global.AllTextFields.removeAt(i);
              },
            );
          },
          icon: Icon(
            Icons.delete,
            size: 40,
          ),
        ),
      ),
    ]);
  }
}
