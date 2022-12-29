import 'package:ayn3/blind/Settings/settings.dart';
import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  @override
  State<TutorialPage> createState() => TutorialPageState();
}

class TutorialPageState extends State<TutorialPage> {
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
                    " كيف استخدم التطبيق ؟ ",
                    style: TextStyle(
                        fontFamily: "PNU",
                        fontWeight: FontWeight.w600,
                        fontSize: 28),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      textAlign: TextAlign.right,
                      "اتبع الخطوات التالية :",
                      style: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w200,
                          fontSize: 25),
                    ),
                    Text(
                      "- شاركنا رابط التغريدة للصورة التي ترغب في وصفها",
                      style: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    Text(
                      "- تلقائياً سيظهر لك وصف الصورة التي شاركتها ، يمكنك اعاده سماع الوصف مره أخرى أو سماع وصف اضافي للصورة من قبل المتطوعين المبصرين  ",
                      style: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    Text(
                      "- يمكنك من قائمة الاعدادات تحديد كيف ترغب ان يظهر لك وصف الصور بإختيار أحد الخيارين الوصف الأعلى تقييما أو الوصف الأطول",
                      style: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
