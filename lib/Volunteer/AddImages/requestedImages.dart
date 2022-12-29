// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

import '../Gellery/Images.dart';
import 'Add.dart';

class RequestedImage extends StatefulWidget {
  const RequestedImage({super.key});

  @override
  State<RequestedImage> createState() => _RequestedImageState();
}

class _RequestedImageState extends State<RequestedImage> {
  List images = [
    "asset/static/image2.png",
    "asset/static/add.png",
    "asset/static/add.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Text("الصور المطلوب وصفها",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "PNU",
                            fontWeight: FontWeight.bold))
                  ]),
            )),
        SizedBox(
            height: 560,
            child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return AddPage(
                    ImagePath: images[0],
                  );
                })),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
