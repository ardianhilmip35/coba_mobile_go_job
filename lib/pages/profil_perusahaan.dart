import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class ProfilPerusahaan extends StatefulWidget {
  const ProfilPerusahaan({ Key? key }) : super(key: key);

  @override
  State<ProfilPerusahaan> createState() => _ProfilPerusahaanState();
}

class _ProfilPerusahaanState extends State<ProfilPerusahaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "detailperusahaan".tr,
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
      body: Padding(padding: EdgeInsets.fromLTRB(10.0, 8.0, 8.0, 8.0),
        child: Column(
          children: [
            TextFormField(
                textInputAction: TextInputAction.search,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                    labelText: "caripekerjaan".tr,
                    border: OutlineInputBorder(),
                    focusColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.search,
                    )
                  ),
            ),
          Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: primarycolor, width: 4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 60.0)),
                      MaterialButton(
                        child: Text(
                          "pekerjaan".tr,
                          style: TextStyle(
                            fontSize: 20, color: primarycolor),
                        ),
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.only(left: 130.0)),
                        MaterialButton(
                        child: Text(
                          "perusahaan".tr,
                          style: TextStyle(
                            fontSize: 20, color: primarycolor),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Container(
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
                fontSize: 20,
                color: primarycolor),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 50)),
                        Text(
                          "Surabaya, Jawa Timur",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: primarycolor),
                        ),
                    ]
                  ),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            padding: EdgeInsets.all(15),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Text(
              "tentangperusahaan".tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: primarycolor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              width: 150,
              child: RaisedButton(
                textColor: Colors.white,
                color: primarycolor,
                child: Text(
                  "simpan".tr,
                style: TextStyle(
                  fontSize: 18, color: Colors.white),
                ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                        new BorderRadius.circular(5.0),
                    ),
              ),
              ),
              Padding(padding: EdgeInsets.only(top: 80, left: 20)),
              RaisedButton(
                textColor: Colors.white,
                color: primarycolor,
                child: Text(
                  "lamar".tr,
                style: TextStyle(
                  fontSize: 18, color: Colors.white),
                ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                        new BorderRadius.circular(5.0),
                    ),
              ),
            ]
          )
          ],
        ),
      ),
    );
  }
}