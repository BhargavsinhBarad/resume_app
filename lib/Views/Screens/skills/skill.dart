import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Utils/global.dart';

class skillpage extends StatefulWidget {
  const skillpage({super.key});

  @override
  State<skillpage> createState() => _skillpageState();
}

class _skillpageState extends State<skillpage> {
  @override
  void initState() {
    super.initState();
    Global.skillController.add(TextEditingController());

    Global.skillTextFields.add(Row());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        title: Text(
          "Skill",
          style: TextStyle(
              color: Global.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 22),
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
                      Text("Enter Skills", style: Global.style3),
                      SizedBox(
                        height: 30,
                      ),
                      ...Global.skillTextFields
                          .map(
                            (e) => getTextFiled(
                              i: Global.skillTextFields.indexOf(
                                (e),
                              ),
                            ),
                          )
                          .toList(),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              Global.skillController
                                  .add(TextEditingController());
                              Global.skillTextFields.add(getTextFiled(
                                  i: Global.skillTextFields.length));
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
          controller: Global.skillController[i],
          decoration: InputDecoration(
            hintText: "Enter your skill..",
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
                Global.skillController.removeAt(i);
                Global.skillTextFields.removeAt(i);
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
