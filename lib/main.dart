//@dart=2.9
import 'package:flutter/material.dart';
import 'package:go_job/pages/dashboard.dart';
import 'package:go_job/pages/profil.dart';
import 'package:go_job/pages/simpanlowongan.dart';
import 'package:go_job/pages/viewprofil.dart';
import 'package:go_job/shared/shared.dart';
import 'package:go_job/pages/login.dart';
import 'package:go_job/pages/register.dart';
import 'package:get/get.dart';
import 'package:go_job/pages/localestring.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: Locale('id', 'ID'),
      home: MyBottomBar(),
    );
  }
}

class MyBottomBar extends StatefulWidget {
  

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Login(),
    Dashboard(),
    Profil(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //untuk bottom navigation barl
        elevation: 30,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: primarycolor, size: 30),
        iconSize: 30,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'beranda'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'cari'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'tersimpan'.tr,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'profil'.tr,
          ),
        ],
        onTap: onTappedBar,
        currentIndex: _currentIndex,
      ),
    );
  }
}
