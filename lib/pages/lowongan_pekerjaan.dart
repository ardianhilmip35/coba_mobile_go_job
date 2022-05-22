import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class LowonganPekerjaan extends StatefulWidget {
  const LowonganPekerjaan({ Key? key }) : super(key: key);

  @override
  State<LowonganPekerjaan> createState() => _LowonganPekerjaanState();
}

class _LowonganPekerjaanState extends State<LowonganPekerjaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lowongan Pekerjaan",
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
      bottomNavigationBar: BottomNavigationBar(
        //untuk bottom navigation bar
        elevation: 30,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: primarycolor, size: 40),
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'Simpan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profil',
          ),
        ],
      ),
      body : Padding(padding: EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.search,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                    labelText: "Search",
                    border: OutlineInputBorder(),
                    focusColor: Color(0xFF0A9EA2),
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.search,
                    )),
              ),
            Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
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
                                        fontSize: 18, color: primarycolor),
                                  ),
                                ],
                              ),
                            ),
                            Container( padding: EdgeInsets.only(right: 1),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                    alignment: Alignment.topRight,
                                    iconSize: 45,
                                    color: primarycolor,
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border)),
                                Padding(
                                  padding: EdgeInsets.only(top: 80),
                                ),
                                RaisedButton(
                                  textColor: Colors.white,
                                  color: primarycolor,
                                  child: Text(
                                    "Lamar Sekarang",
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
          Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
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
                                        fontSize: 18, color: primarycolor),
                                  ),
                                ],
                              ),
                            ),
                            Container( padding: EdgeInsets.only(right: 1),
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                    alignment: Alignment.topRight,
                                    iconSize: 45,
                                    color: primarycolor,
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border)),
                                Padding(
                                  padding: EdgeInsets.only(top: 80),
                                ),
                                RaisedButton(
                                  textColor: Colors.white,
                                  color: primarycolor,
                                  child: Text(
                                    "Lamar Sekarang",
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
          )],
        ),
      ),
    );
  }
}