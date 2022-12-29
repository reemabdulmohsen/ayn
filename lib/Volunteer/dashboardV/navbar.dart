import 'package:ayn3/Volunteer/Gellery/library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../contsants.dart';
import '../AddImages/addimage.dart';
import '../AddImages/requestedImages.dart';
import 'homev.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});
  static int selectedIndexPage = 0;

  @override
  State<navbar> createState() => navbarState();
}

class navbarState extends State<navbar> {
  Shader get linearGradient => LinearGradient(
        colors: <Color>[color_blue, color_purple],
      ).createShader(const Rect.fromLTWH(0.10, 0.30, 200.0, 70.0));

  void _onItemTapped(int index) {
    setState(() {
      navbar.selectedIndexPage = index;
      homepagev.TaskIndex = 0;
      homepagev.pressed = false;
    });
  }

  List pages = const [
    homepagev(), //0
    libraryPage(), //1
    homepagev(), //2
    RequestedImage(), //3
    homepagev(), //4
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    print("nav");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: pages[navbar.selectedIndexPage],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[200],
            selectedItemColor: color_purple,
            unselectedItemColor: color_DarkGray,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/static/setting.png"),
                  ),
                  label: "الاعدادت"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/static/image-7.png"),
                  ),
                  label: "المكتبة"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("asset/static/house.png")),
                  label: "الرئيسية"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("asset/static/add.png")),
                  label: "وصف الصور"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("asset/static/star.png"),
                  ),
                  label: "التقييم")
            ],
            type: BottomNavigationBarType.shifting,
            selectedLabelStyle: TextStyle(fontFamily: "PNU"),
            unselectedLabelStyle: TextStyle(fontFamily: "PNU", fontSize: 10),
            currentIndex: navbar.selectedIndexPage,
            iconSize: 30,
            selectedIconTheme: IconThemeData(size: 40),
            onTap: _onItemTapped,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            elevation: 5));
  }
}
