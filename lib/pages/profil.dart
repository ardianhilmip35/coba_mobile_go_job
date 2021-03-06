import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:go_job/controller/logincontroller.dart';
import 'package:go_job/pages/lamar_sekarang.dart';
import 'package:go_job/pages/riwayatlamaran.dart';
import 'package:go_job/pages/simpanlowongan.dart';
import 'package:go_job/pages/viewprofil.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final controller = Get.put(LoginController());

  final Email email = Email(
    body: 'Hello,',
    subject: 'I Need Help',
    recipients: ['galuhapriliano30@gmail.com'],
    isHTML: false,
  );

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'INDONESIA', 'locale': Locale('id', 'ID')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('gantibahasamu'.tr),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updateLanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profil".tr,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: primarycolor,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              //Container Profil

              height: 150,
              decoration: BoxDecoration(
                color: primarycolor,
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 10)),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: Image.network(
                            controller.googleAccount.value?.photoUrl ?? '')
                        .image,
                  ),
                  Container(
                    //Container Nama Profil
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          controller.googleAccount.value?.displayName ?? '',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            WidgetSpan(
                                child: GestureDetector(
                              child: Text(
                                'kelola'.tr,
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewProfil()),
                                );
                              },
                            ))
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //Container Button Riwayat Lamaran
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Riwayat Lamaran
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => RiwayatLamaran());
                  Navigator.push(context, route);
                },
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.history)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "riwayat".tr,
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Negara & Bahasa
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Negara & Bahasa
                onPressed: () {
                  buildLanguageDialog(context);
                },
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.language)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "gantibahasa".tr,
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Hubungi Kami
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Hubungi Kami
                onPressed: () async {
                  await FlutterEmailSender.send(email);
                },
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.phone)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "hubungi".tr,
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Logout
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Logout
                onPressed: () {
                  controller.logout();
                },
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.logout)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "keluar".tr,
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
