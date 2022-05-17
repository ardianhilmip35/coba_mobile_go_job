import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Go Job",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: primarycolor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                color: secondarycolor,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      Text(
                        "Galuh Apriliano",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                            fontSize: 25, color: Colors.black),
                      ),
                      Container(
                        //Container Foto Profil
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          //Icon Foto Profil
                          Icons.person,
                          color: primarycolor,
                          size: 30,
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: secondarycolor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(30),
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Informasi",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('More Info'),
                              style: ElevatedButton.styleFrom(
                                  primary: primarycolor,
                                  shape: StadiumBorder()),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Cari Lowongan",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  height: 300,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                        height: 145,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.2,
                                        height: 145,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "List Pekerjaan",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Lihat Semua",
                              textAlign: TextAlign.end,
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(
                                            color: Colors.white, width: 4),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.business_center,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Lihat'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Text Job",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Text Job",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17, color: Colors.black),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Lihat'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        iconSize: 45,
                                        color: primarycolor,
                                        onPressed: () {},
                                        icon: Icon(Icons.bookmark)),
                                    Padding(padding: EdgeInsets.only(top: 6)),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Apply'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(
                                            color: Colors.white, width: 4),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.business_center,
                                        color: Colors.black,
                                        size: 40,
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 2)),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Lihat'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Text Job",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Text Job",
                                      style: GoogleFonts.poppins(
                                          fontSize: 17, color: Colors.black),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Lihat'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        iconSize: 45,
                                        color: primarycolor,
                                        onPressed: () {},
                                        icon: Icon(Icons.bookmark)),
                                    Padding(padding: EdgeInsets.only(top: 6)),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Apply'),
                                      style: ElevatedButton.styleFrom(
                                          primary: primarycolor,
                                          shape: StadiumBorder()),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
