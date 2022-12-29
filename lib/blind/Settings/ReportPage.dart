import 'package:flutter/material.dart';
import 'package:ayn3/blind/Settings/settings.dart';

class ReportPage extends StatefulWidget {
  @override
  State<ReportPage> createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return settingsPageState.indexSettings == 0
        ? settingsPage()
        : Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            alignment: Alignment.topRight,
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shadowColor: null,
                            side: const BorderSide(
                                color: Colors.white, width: 0)),
                        onPressed: (() => setState(() {
                              settingsPageState.indexSettings = 0;
                            })),
                        child: const Icon(Icons.arrow_back_ios)),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "شاركنا رأيك",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PNU",
                    ),
                  ),
                ),
                Container(height: 30.0),
                Container(
                  height: 150.0,
                  width: 300.0,
                  color: Colors.transparent,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          maxLines: 30,
                        ),
                      )),
                ),
                Container(height: 20.0),
                ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 65.0, vertical: 15.0),
                    primary: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "إرسال",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: "PNU"),
                  ),
                ),
              ],
            ),
          );
  }
}
