import 'package:flutter/material.dart';

const color_purple = Color.fromRGBO(100, 108, 195, 89);
const color_blue = Color.fromRGBO(80, 138, 197, 100);
const color_lightGray = Color.fromRGBO(207, 207, 207, 21);
const color_DarkGray = Color.fromARGB(156, 68, 67, 67);
const linar =
    BoxDecoration(gradient: LinearGradient(colors: [color_blue, color_purple]));
const bar_button = Color.fromARGB(60, 2, 52, 103);
const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1:
        TextStyle(fontFamily: "PNU", fontWeight: FontWeight.w400, fontSize: 40),
    headline2:
        TextStyle(fontFamily: "PNU", fontWeight: FontWeight.w300, fontSize: 30),
    headline3:
        TextStyle(fontFamily: "PNU", fontWeight: FontWeight.w200, fontSize: 20),
    headline4: TextStyle(
        fontFamily: "PNU", fontWeight: FontWeight.w100, fontSize: 20));

Image iconAdd = Image.asset("asset/static/add.png");
