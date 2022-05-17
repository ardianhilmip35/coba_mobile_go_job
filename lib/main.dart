import 'package:flutter/material.dart';
import 'package:go_job/pages/dashboard.dart';
import 'package:go_job/pages/profil.dart';
import 'package:go_job/pages/simpanlowongan.dart';
import 'package:go_job/pages/viewprofil.dart';
import 'package:go_job/shared/shared.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomBar(),
    );
  }
}


class MyBottomBar extends StatefulWidget {
  const MyBottomBar({ Key? key }) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    ViewProfil(),
    SimpanLowongan(),
    Profil(),
    
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold
    (
      body: _children[_currentIndex],

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
        onTap: onTappedBar,
        currentIndex: _currentIndex,
      ),
    );
  }
}