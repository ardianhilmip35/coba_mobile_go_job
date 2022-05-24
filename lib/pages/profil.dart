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
        leading: IconButton(
          //untuk back button
          iconSize: 30,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              //Container Profil

              height: 180,
              decoration: BoxDecoration(
                color: primarycolor,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    //Container Foto Profil
                    margin: EdgeInsets.only(left: 20),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      //Icon Foto Profil
                      Icons.person,
                      color: Colors.white,
                      size: 80,
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
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Text(
                          "Kelola Profilmu",
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.white),
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
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2),
              ),
              child: RaisedButton(
                //Button Riwayat Lamaran
                onPressed: () => {},
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.history)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Riwayat Lamaran",
                            style: GoogleFonts.poppins(fontSize: 20.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Negara & Bahasa
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2),
              ),
              child: RaisedButton(
                //Button Negara & Bahasa
                onPressed: () => {},
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.language)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Negara & Bahasa",
                            style: GoogleFonts.poppins(fontSize: 20.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Hubungi Kami
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2),
              ),
              child: RaisedButton(
                //Button Hubungi Kami
                onPressed: () => {},
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.phone)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Hubungi Kami",
                            style: GoogleFonts.poppins(fontSize: 20.0),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //Container Button Pengaturan
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2),
              ),
              child: RaisedButton(
                //Button Pengaturan
                onPressed: () => {},
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.settings)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Pengaturan",
                            style: GoogleFonts.poppins(fontSize: 20.0),
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
