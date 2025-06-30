import 'package:flutter/material.dart';
import 'package:aquadiary/pages/fish.dart';

class FishCard extends StatelessWidget {
  final Fish fish;

  const FishCard({super.key, required this.fish});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // How much it spreads
                  blurRadius: 6, // Softness of shadow
                  offset: Offset(0, 3), // x and y direction
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 60,
                  child: Image.asset('Assets/fish/guppy.png'),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
                  child:
                  Text(fish.species,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
