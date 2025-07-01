import 'package:flutter/material.dart';
import 'package:aquadiary/pages/home.dart';
import 'package:aquadiary/pages/Listitems.dart';
import 'package:aquadiary/pages/card.dart';
import 'package:aquadiary/pages/newFish.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => ListItems(),
        '/add' : (context) => Newfish(),
      },
  ));
}
