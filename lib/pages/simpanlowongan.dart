import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    title: "GO JOB",
    home: SimpanLowongan(),
  ));
}

int _selectedIndex = 0;

class SimpanLowongan extends StatefulWidget {
  const SimpanLowongan({Key? key}) : super(key: key);

  @override
  State<SimpanLowongan> createState() => _SimpanLowonganState();
}

class _SimpanLowonganState extends State<SimpanLowongan> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "lowongantersimpan".tr,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: primarycolor,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    border: Border.all(color: primarycolor, width: 4),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //Container Foto Profil
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.grey, width: 4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        "PT Patma Tirta Jaya",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        width: double.infinity,
                        height: 185,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Web Developtment Staff",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: primarycolor),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 20)),
                                  Text(
                                    "Surabaya, Jawa Timur",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: primarycolor),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 52)),
                                  Text(
                                    "5 Hari yang lalu",
                                    style: TextStyle(
                                        fontSize: 25, color: primarycolor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                    alignment: Alignment.topRight,
                                    iconSize: 45,
                                    color: primarycolor,
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark)),
                                Padding(
                                  padding: EdgeInsets.only(top: 70),
                                ),
                                RaisedButton(
                                  textColor: Colors.white,
                                  color: primarycolor,
                                  child: Text(
                                    "lamar".tr,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  onPressed: () {},
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(12.0),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
