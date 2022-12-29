// ignore_for_file: camel_case_types

import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';
import 'package:ayn3/Volunteer/dashboardV/VolTask.dart';

import '../Gellery/library.dart';

class homepagev extends StatefulWidget {
  static bool pressed = false;
  static int TaskIndex = 0;

  const homepagev({super.key});

  @override
  State<homepagev> createState() => homepagevState();
}

class homepagevState extends State<homepagev> {
  final List tasks = [
    ["الصور المطلوب وصفها", "asset/static/add.png", 1],
    ["مكتبة الصورة الخاصة بك", "asset/static/image-7.png", 2],
    ["تقييم الوصف الآلي", "asset/static/star.png", 3]
  ];
  @override
  Widget build(BuildContext context) {
    return parchisWitget(context);
  }

  Widget parchisWitget(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 60,
        ),
        SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0, top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Text("أهلا مجد",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "PNU",
                            fontWeight: FontWeight.bold))
                  ]),
            )), // Text Top

        Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0, top: 10),
              child: Row(children: const <Widget>[
                Text("المهام",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "PNU",
                        fontWeight: FontWeight.bold))
              ]),
            )),

        SizedBox(
            height: 140,
            child: ListView.builder(
                itemCount: tasks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return VolTask(
                      TaskName: tasks[index][0],
                      TaskIcon: tasks[index][1],
                      TaskPage: tasks[index][2]);
                })),

        const SizedBox(
          height: 25,
        ),

        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 40),
          child: const Text(
            "الاحصائيات",
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 20, fontFamily: "PNU", fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient:
                  const LinearGradient(colors: [color_blue, color_purple])),
          padding: const EdgeInsets.all(20),
          child: const Text(
            "عدد الصور الموصوفة:  ٥٠",
            style:
                TextStyle(fontFamily: "PNU", color: Colors.white, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient:
                  const LinearGradient(colors: [color_blue, color_purple])),
          padding: const EdgeInsets.all(20),
          child: const Text(
            "عدد الصور المقيمة:  ١٠٠",
            style:
                TextStyle(fontFamily: "PNU", color: Colors.white, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
