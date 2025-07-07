import 'package:flutter/material.dart';
import 'package:aquadiary/World_time/pages/choose_location.dart';
import 'package:aquadiary/World_time/pages/home.dart';
import 'package:aquadiary/World_time/pages/loading.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      //Worldtime Routes
      '/' : (context) => Home(),
      '/location' : (context) => ChooseLocation(),
      '/load' : (context) => Loading(),
    },
  ));
}