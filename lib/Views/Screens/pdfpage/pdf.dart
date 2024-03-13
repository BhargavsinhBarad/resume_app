import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../Utils/global.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({super.key});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  final pdf = pw.Document();

  generatepdf() async {
    final ByteData bytes = await rootBundle.load(Global.saveImage);
    final Uint8List byteList = bytes.buffer.asUint8List();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Stack(
          children: [
            pw.Container(
              height: double.infinity,
              width: double.infinity,
              decoration: pw.BoxDecoration(
                image: pw.DecorationImage(
                  image: pw.MemoryImage(byteList),
                  fit: pw.BoxFit.cover,
                ),
              ),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(20),
              child: pw.Row(
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Text("Introduction", style: Global.stylepdf2),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Container(
                        width: 225,
                        child:
                            pw.Text("${Global.about}", style: Global.stylepdf),
                      ),
                      pw.Text("Contact Details", style: Global.stylepdf2),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "Name : ${Global.name}",
                        style: Global.stylepdf,
                      ),
                      pw.Text(
                        "Email : ${Global.email}",
                        style: Global.stylepdf,
                      ),
                      pw.Text(
                        "Phone : ${Global.number}",
                        style: Global.stylepdf,
                      ),
                      pw.Text(
                        "City : ${Global.city}",
                        style: Global.stylepdf,
                      ),
                      pw.SizedBox(
                        height: 22,
                      ),
                      pw.Text("Personal Details", style: Global.stylepdf2),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "DOB : ${Global.datetime}",
                        style: Global.stylepdf,
                      ),
                      pw.Text(
                        "Marital Status : ${Global.maritalstatus}",
                        style: Global.stylepdf,
                      ),
                      pw.Text(
                        "Nationality : ${Global.nation}",
                        style: Global.stylepdf,
                      ),
                      pw.SizedBox(
                        height: 22,
                      ),
                      pw.Text(
                        "Eduction",
                        style: Global.stylepdf2,
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Text(
                        "${Global.course} \n ${Global.school}, ${Global.year}",
                        style: Global.stylepdf,
                      ),
                      pw.SizedBox(
                        height: 18,
                      ),
                      pw.Text("Languages", style: Global.stylepdf2),
                      pw.SizedBox(),
                      (Global.english == true)
                          ? pw.Text("English", style: Global.stylepdf)
                          : pw.Text(""),
                      (Global.hindi == true)
                          ? pw.Text("Hindi", style: Global.stylepdf)
                          : pw.Text(""),
                      (Global.gujarati == true)
                          ? pw.Text("Gujarati", style: Global.stylepdf)
                          : pw.Text(""),
                    ],
                  ),
                  pw.SizedBox(
                    width: 22,
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Container(
                        height: Get.height * 0.14,
                        width: Get.width * 0.3,
                        decoration: pw.BoxDecoration(
                            color: PdfColors.red,
                            shape: pw.BoxShape.circle,
                            image: pw.DecorationImage(
                                image: pw.MemoryImage(
                                    Global.file!.readAsBytesSync()))),
                      ),
                      pw.Text("Experiences:-", style: Global.stylepdf2),
                      pw.SizedBox(
                        height: 10,
                      ),
                      ...Global.expController
                          .map(
                            (e) => pw.Text("${e.text}", style: Global.stylepdf),
                          )
                          .toList(),
                      pw.SizedBox(
                        height: 22,
                      ),
                      pw.Text("Skills", style: Global.stylepdf2),
                      ...Global.skillController
                          .map(
                            (e) => pw.Text("${e.text}", style: Global.stylepdf),
                          )
                          .toList(),
                      pw.SizedBox(
                        height: 22,
                      ),
                      pw.Text("Certificate", style: Global.stylepdf2),
                      ...Global.AllController.map(
                        (e) => pw.Text("${e.text}", style: Global.stylepdf),
                      ).toList(),
                      pw.SizedBox(
                        height: 22,
                      ),
                      pw.Text("Project", style: Global.stylepdf2),
                      pw.Text("Title : ${Global.titl}", style: Global.stylepdf),
                      pw.Text("Framework:", style: Global.stylepdf),
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 30,
                          ),
                          (Global.c == true)
                              ? pw.Text(
                                  "C lan, ",
                                  style: const pw.TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              : pw.Text(""),
                          (Global.cp == true)
                              ? pw.Text(
                                  "C++, ",
                                  style: const pw.TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              : pw.Text(""),
                          (Global.flutter == true)
                              ? pw.Text(
                                  "Futter",
                                  style: const pw.TextStyle(
                                    fontSize: 16,
                                  ),
                                )
                              : pw.Text(""),
                        ],
                      ),
                      pw.Text("Roles: ${Global.roles}", style: Global.stylepdf),
                      pw.Text("Technologies: ${Global.tecono}",
                          style: Global.stylepdf),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    generatepdf();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
