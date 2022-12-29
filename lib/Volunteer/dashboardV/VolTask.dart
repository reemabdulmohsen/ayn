import 'package:ayn3/Volunteer/dashboardV/navbar.dart';
import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ayn3/Volunteer/dashboardV/homev.dart';

import '../Gellery/library.dart';

class VolTask extends StatefulWidget {
  final TaskName;
  final TaskIcon;
  final TaskPage;
  VolTask(
      {required this.TaskName, required this.TaskIcon, required this.TaskPage});

  @override
  State<VolTask> createState() => VolTaskState();
}

class VolTaskState extends State<VolTask> {
  @override
  Widget build(BuildContext context) {
    print("hi");
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 200,
          padding: EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: Image.asset(
                        (widget.TaskIcon),
                        color: color_purple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              homepagev.pressed = true;
                              homepagev.TaskIndex = widget.TaskPage;
                              navbar.selectedIndexPage = 1;
                            });
                          },
                          child: Text(widget.TaskName,
                              style: TextStyle(
                                  color: color_DarkGray,
                                  fontSize: 15,
                                  fontFamily: "PNU",
                                  fontWeight: FontWeight.w400))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
