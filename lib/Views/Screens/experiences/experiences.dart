import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Utils/global.dart';

class experiencespage extends StatefulWidget {
  const experiencespage({super.key});

  @override
  State<experiencespage> createState() => _experiencespageState();
}

class _experiencespageState extends State<experiencespage> {
  void initState() {
    super.initState();
    Global.expController.add(TextEditingController());
    Global.expTextFields.add(Row());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.18,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "experiences",
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Company Name",
                  style: Global.style3,
                ),
                const SizedBox(
                  height: 3,
                ),
                ...Global.expTextFields
                    .map(
                      (e) => getTextFiled(
                        i: Global.expTextFields.indexOf(
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
                        Global.expController.add(TextEditingController());
                        Global.expTextFields
                            .add(getTextFiled(i: Global.expTextFields.length));
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
      ),
    );
  }

  Row getTextFiled({required int i}) {
    return Row(children: [
      Expanded(
        flex: 10,
        child: TextField(
          controller: Global.expController[i],
          decoration: InputDecoration(
            hintText: "Enter your Company Nmae",
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
                Global.expController.removeAt(i);
                Global.expTextFields.removeAt(i);
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
