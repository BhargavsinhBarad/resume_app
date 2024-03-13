import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Utils/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/global.dart';

class intropage extends StatefulWidget {
  const intropage({super.key});

  @override
  State<intropage> createState() => _intropageState();
}

class _intropageState extends State<intropage> {
  final List pages = [
    {
      'image': 'lib/Assets/Image/intro1.png',
      'title': 'Welcome to Resume Builder App',
      'description':
          'Effortlessly create a standout resume with our user-friendly interface. Choose from a variety of templates tailored to different industries.'
    },
    {
      'image': 'lib/Assets/Image/intro2.png',
      'title': 'Explore Features',
      'description':
          'Never struggle with what to write again! Our intelligent system provides personalized content suggestions to highlight your skills and experiences.'
    },
    {
      'image': 'lib/Assets/Image/intro3.png',
      'title': 'Get Started',
      'description': 'Let\'s get started!'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
                "https://img.freepik.com/free-photo/abstract-empty-smooth-light-pink-studio-room-background-use-as-montage-product-displaybannertemp_1258-54791.jpg?size=338&ext=jpg&ga=GA1.1.632798143.1706054400&semt=ais",
                fit: BoxFit.fill),
          ),
          PageView.builder(
            controller: Global.pageController,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                Global.currentPageIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.5,
                    width: Get.width * 0.5,
                    child: Image.asset(
                      pages[index]['image'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Text(pages[index]['title'],
                      style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      pages[index]['description'],
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  for (int i = 0; i < pages.length; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == Global.currentPageIndex
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: (Global.currentPageIndex == pages.length - 1)
                ? TextButton(
                    onPressed: () async {
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setBool("isIntroVisited", true);
                      Get.offNamed("/splash");
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  )
                : IconButton(
                    onPressed: () {
                      Global.pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
