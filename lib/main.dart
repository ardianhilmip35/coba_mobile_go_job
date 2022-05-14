import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: "GO JOB",
    home: Login(),
  ));
}

int _selectedIndex = 0;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lamar Sekarang",
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
                    focusColor: Colors.grey,
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
                  padding: EdgeInsets.all(3),
                  height: 125,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 217, 217)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding (padding: EdgeInsets.all(2),),
                      Text(
                        "Web Development Staff",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: primarycolor),
                      ),
                      Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container( padding: EdgeInsets.only(top: 10),
                                child: Column(
                                children: <Widget>[
                                  Text(
                                    "PT Patma Tirta Jaya",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: primarycolor),
                                  ),
                                ],
                                )
                              ),
                              Container( padding: EdgeInsets.only(left: 260, top: 10),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  MaterialButton(
                                    textColor: primarycolor,
                                    child: new 
                                    Row(mainAxisAlignment: MainAxisAlignment.end, 
                                    children: [
                                      Icon(Icons.navigate_next)
                                    ]),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {}
                                    },
                                    splashColor: Colors.transparent,
                                  ),
                                ],
                                )
                              ),
                            ],
                        ),
                      // Padding (padding: EdgeInsets.all(7),), 
                      // Text(
                      //   "PT Patma Tirta Jaya",
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     color: primarycolor),
                      // ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container( padding: EdgeInsets.only(top: 30),
                              child: Column(
                              children: <Widget>[
                                Text(
                                  "Surabaya, Jawa Timur"
                                ),
                              ],
                              )
                            ),
                            Container( padding: EdgeInsets.only(left: 230, top: 30),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "5 Hari Yang Lalu"
                                ),
                              ],
                              )
                            ),
                          ],
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
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 217, 217)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container( padding: EdgeInsets.only(top: 10),
                                child: Column(
                                children: <Widget>[
                                  Text(
                                    "Tanti Wulansari",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: primarycolor),
                                  ),
                                ],
                                )
                              ),
                              Container( padding: EdgeInsets.only(left: 250, top: 10),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  MaterialButton(
                                    textColor: primarycolor,
                                    child: new 
                                    Row(mainAxisAlignment: MainAxisAlignment.end, 
                                    children: [
                                      Text(
                                        "Lihat",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ]),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {}
                                    },
                                    splashColor: Colors.transparent,
                                  ),
                                ],
                                )
                              ),
                            ],
                        ),
                      // Padding (padding: EdgeInsets.all(3),),
                      // Text(
                      //   "Tanti Wulansari",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 20,
                      //     color: primarycolor),
                      // ),
                        Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container( padding: EdgeInsets.only(top: 10),
                                child: Column(
                                children: <Widget>[
                                  Text(
                                    "087784666329"
                                  ),
                                ],
                                )
                              ),
                              Container( padding: EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "tantiwulansari@gmail.com"
                                  ),
                                ],
                                )
                              ),
                            ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding (padding: EdgeInsets.all(8),), 
          TextFormField( 
            maxLines: 5,
            style: Theme.of(context).textTheme.bodyText1,
              decoration: InputDecoration(
                hintText: "Informasi Pengalaman Anda :",
                border: OutlineInputBorder(),
                focusColor: Colors.grey,
                labelStyle:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 14)
              ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 217, 217)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container( padding: EdgeInsets.only(top: 5),
                                child: Column(
                                children: <Widget>[
                                  Text(
                                    "Curiculum Vitae",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: primarycolor),
                                  ),
                                ],
                                )
                              ),
                              Container( padding: EdgeInsets.only(left: 180, top: 5),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  MaterialButton(
                                    height: 40.0,
                                    minWidth: 100.0,
                                    color: primarycolor,
                                    textColor: Colors.white,
                                    child: new 
                                    Row(mainAxisAlignment: MainAxisAlignment.end, 
                                    children: [
                                      Text(
                                        "Choose File  ",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Icon(Icons.drive_folder_upload_outlined),
                                      SizedBox(width: 12),
                                    ]),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {}
                                    },
                                    splashColor: Colors.transparent,
                                  ),
                                ],
                                )
                              ),
                            ],
                        ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 17)),
                MaterialButton(
                height: 40.0,
                minWidth: 100.0,
                color: primarycolor,
                textColor: Colors.white,
                child: new Text(
                  "Kirim Lamaran",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                splashColor: Colors.transparent,
              ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
