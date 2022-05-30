import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
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

              height: 160,
              decoration: BoxDecoration(
                color: primarycolor,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    //Container Foto Profil
                    margin: EdgeInsets.only(left: 20),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.white, width: 4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      //Icon Foto Profil
                      Icons.person,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                  Container(
                    //Container Nama Profil
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Galuh Apriliano",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          "Kelola Profilmu",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.white),
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
                onPressed: () => {},
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
                            "Riwayat Lamaran",
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
                onPressed: () => {},
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
                            "Negara & Bahasa",
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
                onPressed: () => {},
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
                            "Hubungi Kami",
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Pengaturan
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Pengaturan
                onPressed: () => {},
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.settings)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Pengaturan",
                            style: GoogleFonts.poppins(fontSize: 15.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Pengaturan
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 0.5),
              ),
              child: RaisedButton(
                //Button Logout
                onPressed: () => {},
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
                            "Logout",
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
