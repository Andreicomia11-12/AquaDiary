import 'package:flutter/material.dart';
import 'package:aquadiary/pages/fish.dart';
import 'package:aquadiary/pages/card.dart';
import 'fish.dart';

class listItems extends StatefulWidget {
  const listItems({super.key});

  @override
  State<listItems> createState() => _listItemsState();
}

class _listItemsState extends State<listItems> {
  @override
  List<Fish> fishList = [
    Fish(
        species: 'Ciclids',
        description: 'Active fish',
        careTips: 'Add clean, warm water and provide plenty of space.'
    ),
    Fish(
        species: 'Molly',
        description: 'Active fish',
        careTips: 'Add clean, warm water and provide plenty of space.'
    ),
    Fish(
        species: 'GUppy',
        description: 'Active fish',
        careTips: 'Add clean, warm water and provide plenty of space.'
    ), Fish(
        species: 'PKBM',
        description: 'Active fish',
        careTips: 'Add clean, warm water and provide plenty of space.'
    )
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF006D77),
        title: Text(
          'AquaCare',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: fishList.map((fish) {
          return FishCard(fish: fish);
        }).toList(),
      ),
    );
  }
}