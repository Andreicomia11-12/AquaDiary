import 'package:flutter/material.dart';

import 'world_time/pages/home.dart';
import 'world_time/pages/loading.dart';
import 'world_time/pages/choose_location.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ),
  );
}