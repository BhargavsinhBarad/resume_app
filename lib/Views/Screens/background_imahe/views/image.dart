import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Utils/list.dart';

import '../../../Utils/global.dart';

class image extends StatefulWidget {
  image({super.key});

  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  dynamic num = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.15,
        backgroundColor: Global.themecolor,
        foregroundColor: Global.textcolor,
        title: Text(
          "Images",
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
          icon: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
          ),
          itemCount: Images.length,
          itemBuilder: (ctx, i) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  num = i;
                  Global.saveImage = Images[i];
                });
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: (num == i) ? Colors.black : Colors.grey,
                    width: (num == i) ? 3 : 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  child: Image.asset(
                    Images[i],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },),
    );
  }
}
