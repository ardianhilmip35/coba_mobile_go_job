import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: "GO JOB",
    home: ViewProfil(),
  ));
}

int _selectedIndex = 0;

class ViewProfil extends StatefulWidget {
  const ViewProfil({Key? key}) : super(key: key);

  @override
  State<ViewProfil> createState() => _ViewProfilState();
}

class _ViewProfilState extends State<ViewProfil> {
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
          "ViewProfil",
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 80,
            ),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      //Container Foto Profil
                      margin: EdgeInsets.only(top: 20, left: 210),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: primarycolor, width: 4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        //Icon Foto Profil
                        Icons.person,
                        color: primarycolor,
                        size: 80,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 160)),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                      color: primarycolor,
                    ),
                  ],
                ),
                Container(
                  //Container Nama Profil
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Galuh Apriliano",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "0882153572313",
                            style: GoogleFonts.poppins(
                                fontSize: 18, color: Colors.grey),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text(
                            "|",
                            style: GoogleFonts.poppins(
                                fontSize: 18, color: Colors.grey),
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          Text(
                            "galuhapriliano@gmail.com",
                            style: GoogleFonts.poppins(
                                fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(Icons.business_center),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Pengalaman Kerja",
                            style: GoogleFonts.poppins(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 210)),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                      color: primarycolor,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                Text(
                  "Tambahkan Pengalaman Kerja",
                  textAlign: TextAlign.end,
                  style: GoogleFonts.poppins(fontSize: 20, color: primarycolor),
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(Icons.school),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Pendidikan",
                            style: GoogleFonts.poppins(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 240)),
                    Text(
                      "Tampilkan",
                      textAlign: TextAlign.end,
                      style:
                          GoogleFonts.poppins(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Politeknik Negeri Jember",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 220)),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                      color: primarycolor,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Teknik Informatika",
                            style: GoogleFonts.poppins(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: primarycolor, width: 2)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(Icons.emoji_objects),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Keterampilan",
                            style: GoogleFonts.poppins(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 270)),
                    IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {},
                      icon: Icon(Icons.edit),
                      color: primarycolor,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
