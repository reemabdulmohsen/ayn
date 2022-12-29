// ignore_for_file: non_constant_identifier_names

import 'package:ayn3/Volunteer/AddImages/addimage.dart';
import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import 'EditImage.dart';

class ImageDesc extends StatefulWidget {
  final ImagePath;

  ImageDesc({
    required this.ImagePath,
  });

  @override
  State<ImageDesc> createState() => _ImageDescState();
}

class _ImageDescState extends State<ImageDesc> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 200,
          height: 330,
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        (widget.ImagePath),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        "عرض",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "PNU",
                            fontWeight: FontWeight.w100,
                            color: color_DarkGray),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditImage()));
                      },
                    )
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
