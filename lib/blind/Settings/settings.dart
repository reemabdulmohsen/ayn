// ignore_for_file: non_constant_identifier_names

import 'package:ayn3/blind/Settings/ReportPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'VoiceSett.dart';

import 'TutorialPage.dart';

// ignore: camel_case_types
class settingsPage extends StatefulWidget {
  @override
  State<settingsPage> createState() => settingsPageState();
}

class settingsPageState extends State<settingsPage> {
  static int indexSettings = 0;
  List<Widget> page = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        indexSettings == 0
            ? Align(
                child: Container(
                  child: ListView(
                    padding: EdgeInsets.all(24),
                    children: [
                      SettingsGroup(
                          titleTextStyle:
                              TextStyle(fontSize: 28, fontFamily: "PNU"),
                          title: "الدعم الفني",
                          children: [buildTutorial(), BuildReport()]),
                      SettingsGroup(
                          titleTextStyle:
                              TextStyle(fontSize: 28, fontFamily: "PNU"),
                          title: "اعدادت قراءة الوصف",
                          children: [VoiceSettFunc()])
                    ],
                  ),
                ),
              )
            : indexSettings == 1
                ? Scaffold(
                    body: TutorialPage(),
                  )
                : indexSettings == 2
                    ? Scaffold(
                        body: ReportPage(),
                      )
                    : indexSettings == 3
                        ? VoiceSett()
                        : Container()
      ],
    );
  }

  Widget buildTutorial() {
    return SimpleSettingsTile(
        titleTextStyle: const TextStyle(fontSize: 15, fontFamily: "PNU"),
        title: " كيف استخدم التطبيق؟",
        leading: const Icon(Icons.abc),
        onTap: () {
          setState(() {
            indexSettings = 1;
          });
        });
  }

  Widget BuildReport() {
    return SimpleSettingsTile(
        titleTextStyle: const TextStyle(fontSize: 15, fontFamily: "PNU"),
        title: " شاركنا رأيك",
        leading: const Icon(Icons.abc),
        onTap: () {
          setState(() {
            indexSettings = 2;
          });
        });
  }

  Widget VoiceSettFunc() {
    return SimpleSettingsTile(
        titleTextStyle: const TextStyle(fontSize: 15, fontFamily: "PNU"),
        title: "قراءة الوصف",
        leading: const Icon(Icons.abc),
        onTap: () {
          setState(() {
            indexSettings = 3;
          });
        });
  }
}
