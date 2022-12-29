import 'package:ayn3/contsants.dart';
import 'package:flutter/material.dart';

class EditImage extends StatefulWidget {
  const EditImage({super.key});

  @override
  State<EditImage> createState() => _EditImageState();
}

class _EditImageState extends State<EditImage> {
  TextEditingController _textFieldController = TextEditingController();
  late String valueText;
  String codeDialog = "لا يوجد وصف";
  Future<void> EditDescription(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('وصف الصورة الجديد',
                style: TextStyle(fontFamily: "PNU", color: Colors.black)),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
              decoration: const InputDecoration(
                  hintText: "ادخل وصف الصورة",
                  hintStyle: TextStyle(fontFamily: "PNU", color: Colors.black)),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color_purple)),
                child: Text(
                  'حفظ',
                  style: TextStyle(fontFamily: "PNU", color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'تم حفظ الوصف',
                        style:
                            TextStyle(fontFamily: "PNU", color: Colors.white),
                      ),
                      duration: Duration(seconds: 6),
                      backgroundColor: Colors.green[600]!,
                    ));
                    codeDialog = valueText;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

  Future<void> deletedecription(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "هل انت متأكد من حذف الوصف؟",
              style: TextStyle(fontFamily: "PNU", color: Colors.black),
            ),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'تم حذف الوصف',
                      style: TextStyle(fontFamily: "PNU", color: Colors.white),
                    ),
                    duration: Duration(seconds: 6),
                    backgroundColor: Color.fromARGB(255, 163, 21, 21),
                  ));
                },
                child: const Text(
                  "حذف",
                  style: TextStyle(fontFamily: "PNU", color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "رجوع",
                  style: TextStyle(fontFamily: "PNU", color: Colors.white),
                ),
              ),
            ],
          );
        });
  }

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
                "مكتبة الصورة الخاصة",
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
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            codeDialog,
                            style: TextStyle(fontFamily: "PNU", fontSize: 15),
                          ),
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
                        onPressed: () {
                          EditDescription(context);
                        },
                        child: const Text(
                          "تعديل الوصف",
                          style:
                              TextStyle(fontFamily: "PNU", color: Colors.white),
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
                        gradient: LinearGradient(
                          begin: Alignment(-0.95, 0.0),
                          end: Alignment(1.0, 0.0),
                          colors: [
                            Color.fromARGB(255, 155, 0, 0),
                            Colors.red[900]!
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          deletedecription(context);
                        },
                        child: const Text(
                          "حذف",
                          style:
                              TextStyle(fontFamily: "PNU", color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
