import 'package:flutter/material.dart';
import 'package:aquadiary/pages/fish.dart';

class FishCard extends StatelessWidget {
  final Fish fish;

  const FishCard({super.key, required this.fish});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fish.species,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(fish.description),
            const SizedBox(height: 8),
            Text(
              'Care Tips: ${fish.careTips}',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
