import 'package:ayn3/blind/Settings/ReportPage.dart';
import 'package:ayn3/blind/Settings/TutorialPage.dart';
import 'package:ayn3/blind/home.dart';
import 'package:ayn3/blind/Settings/settings.dart';
import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    settingsPage(),
    MyHomePage(),
    Container(child: const Center(child: Text("3")))
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('ar'), Locale("en")
        // ... other locales the app supports
      ],
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: pages[_selectedIndex],
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
                    icon: ImageIcon(AssetImage("asset/static/house.png")),
                    label: "الرئيسية"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("asset/static/add.png")),
                    label: "وصف الصور"),
              ],
              type: BottomNavigationBarType.shifting,
              selectedLabelStyle: TextStyle(fontFamily: "PNU"),
              unselectedLabelStyle: TextStyle(fontFamily: "PNU", fontSize: 10),
              currentIndex: _selectedIndex,
              iconSize: 30,
              selectedIconTheme: IconThemeData(size: 40),
              onTap: _onItemTapped,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 5)),
    );
  }
}
