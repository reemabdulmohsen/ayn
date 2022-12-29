import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';

import 'dashboardV/navbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                IconButton(
                  alignment: Alignment.topRight,
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => {Navigator.pop(context)},
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'تسجيل حساب جديد ',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "PNU",
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "اسم المستخدم",
                      hintStyle: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "البريد الالكتروني",
                      hintStyle: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "كلمة المرور",
                      hintStyle: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "تأكيد كلمة المرور",
                      hintStyle: TextStyle(
                          fontFamily: "PNU",
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const navbar()),
                      );

                      print(nameController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      "تسجيل دخول",
                      style: TextStyle(fontFamily: "PNU", color: Colors.white),
                    ),
                  ),
                ),
              ],
            )));
  }
}
