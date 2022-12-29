import 'package:ayn3/Volunteer/Signup.dart';
import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[color_blue, color_purple],
  ).createShader(const Rect.fromLTWH(0.10, 0.30, 50.0, 70.0));
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
                      'تسجيل الدخول ',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "PNU",
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 20,
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
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      "تسجيل دخول",
                      style: TextStyle(fontFamily: "PNU", color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: Text(
                    'نسيت كلمة المرور ',
                    style: TextStyle(
                      fontSize: 15,
                      foreground: Paint()..shader = linearGradient,
                      fontFamily: "PNU",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 280,
                ),
                Column(
                  children: [
                    const Text(
                      'ليس لديك حساب ؟',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PNU", fontWeight: FontWeight.w100),
                    ),
                    TextButton(
                      child: Text(
                        'حساب جديد',
                        style: TextStyle(
                            fontFamily: "PNU",
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                    )
                  ],
                ),
              ],
            )));
  }
}
