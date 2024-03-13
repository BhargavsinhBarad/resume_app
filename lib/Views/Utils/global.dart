import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/widgets.dart' as pw;

class Global {
  static Color themecolor = Colors.red;
  static Color textcolor = Colors.white;
  static pw.TextStyle stylepdf = const pw.TextStyle(
    fontSize: 20,
  );
  static pw.TextStyle stylepdf2 = pw.TextStyle(
    fontSize: 25,
    fontWeight: pw.FontWeight.bold,
  );
  static TextStyle style3 = const TextStyle(
    fontSize: 16,
    color: Colors.red,
  );

  static String saveImage = "lib/Assets/Image/04.jpeg";

  static String name = "";
  static String email = "";
  static String number = "";
  static String city = "";
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController numberController = TextEditingController();
  static TextEditingController cityController = TextEditingController();
  static PageController pageController = PageController(initialPage: 0);
  static int currentPageIndex = 0;

  static File? file;

  static List AllTextFields = [];
  static List<TextEditingController> AllController = [];

  static List expTextFields = [];
  static List<TextEditingController> expController = [];

  static List skillTextFields = [];
  static List<TextEditingController> skillController = [];

  static bool? english = false;
  static bool? hindi = false;
  static bool? gujarati = false;
  static String? maritalstatus;
  static String? datetime;
  static String? about;
  static String? nation;

  static String? course;
  static String? school;
  static String? cgpa;
  static String? year;

  static String? titl;
  static String? tecono;
  static String? des;
  static bool? c = false;
  static bool? cp = false;
  static bool? flutter = false;
  static bool? android = false;
  static bool? ios = false;
  static bool? web = false;
  static bool? front = false;
  static bool? back = false;
  static String? roles;

  static String? cname;
  static String? eyear;
  static String? Empstatus;
  static String? role;
}
