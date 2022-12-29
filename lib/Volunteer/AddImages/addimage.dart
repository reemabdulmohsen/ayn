import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';

import '../Gellery/library.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0, top: 20),
              child: Text(
                "الصور المطلوب وصفها",
                style: TextStyle(
                    fontFamily: "PNU",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 350,
                        width: 350,
                        child: Image.asset("asset/static/image2.png")),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(60)),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: TextField(
                              decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "ادخل وصف الصورة",
                            hintStyle:
                                TextStyle(fontFamily: "PNU", fontSize: 15),
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        gradient: const LinearGradient(
                          begin: Alignment(-0.95, 0.0),
                          end: Alignment(1.0, 0.0),
                          colors: [color_blue, color_purple],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () => print("hi"),
                        child: const Text(
                          "اضافة الوصف",
                          style:
                              TextStyle(fontFamily: "PNU", color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
