import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';

import '../Volunteer/Login.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[color_blue, color_purple],
  ).createShader(const Rect.fromLTWH(0.10, 0.30, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //title
              const Text('مرحبًا بك في عين',
                  style: TextStyle(
                      fontFamily: "PNU",
                      fontWeight: FontWeight.bold,
                      fontSize: 40)),
              const SizedBox(
                height: 10,
              ),
              //h2
              const Text('شاركنا رابط التغريدة',
                  style: TextStyle(
                      fontFamily: "PNU",
                      fontWeight: FontWeight.w200,
                      fontSize: 25)),

              //tweet link
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(30)),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: TextField(
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "PNU",
                        fontWeight: FontWeight.w300,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "رابط التغريدة",
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
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
              onPressed: null,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shadowColor: MaterialStateProperty.all(Colors.transparent)),
              child: const Text(
                "طلب وصف",
                style: TextStyle(fontFamily: "PNU", color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 160,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: .0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore, duplicate_ignore
              children: [
                const SizedBox(
                  height: 100,
                ),
                //thank you
                const Text('شكراً لاستخدامك تطبيق عين',
                    style: TextStyle(
                      fontFamily: "PNU",
                      fontSize: 20,
                    )),
                //sign in
                // ignore: prefer_const_constructors

                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text(
                      'تسجيل دخول كمتطوع',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "PNU",
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
