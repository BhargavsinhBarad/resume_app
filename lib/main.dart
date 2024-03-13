import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_app/Views/Screens/Eduction/Eduction.dart';
import 'package:resume_app/Views/Screens/Homepage/homescreen.dart';
import 'package:resume_app/Views/Screens/background_imahe/views/image.dart';
import 'package:resume_app/Views/Screens/contect_info/contectinfopage.dart';
import 'package:resume_app/Views/Screens/detailspage/detailspage.dart';
import 'package:resume_app/Views/Screens/experiences/experiences.dart';
import 'package:resume_app/Views/Screens/intropage/intropage.dart';
import 'package:resume_app/Views/Screens/pdfpage/pdf.dart';
import 'package:resume_app/Views/Screens/persondetail/prersonpage.dart';
import 'package:resume_app/Views/Screens/projectpage/project.dart';
import 'package:resume_app/Views/Screens/skills/skill.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Views/Screens/Spalsh/spalshscreen.dart';
import 'Views/Screens/achievement/achievement.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool("isIntroVisited") ?? false;

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: (isvisited) ? '/splash' : '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => intropage(),
        ),
        GetPage(
          name: '/splash',
          page: () => Splash(),
        ),
        GetPage(
          name: '/home',
          page: () => Home_Page(),
        ),
        GetPage(
          name: '/detail',
          page: () => detailspage(),
        ),
        GetPage(
          name: '/contact_info',
          page: () => contectpage(),
        ),
        GetPage(
          name: '/personal_details',
          page: () => persondetail(),
        ),
        GetPage(
          name: '/eduction',
          page: () => eductionpage(),
        ),
        GetPage(
          name: '/projects',
          page: () => projectpage(),
        ),
        GetPage(
          name: '/experiences',
          page: () => experiencespage(),
        ),
        GetPage(
          name: '/achievements',
          page: () => Achievements(),
        ),
        GetPage(
          name: '/skills',
          page: () => skillpage(),
        ),
        GetPage(
          name: '/pdf',
          page: () => pdf_page(),
        ),
        GetPage(
          name: "/image",
          page: () => image(),
        ),
      ],
    ),
  );
}
