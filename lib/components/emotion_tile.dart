import 'package:flutter/material.dart';

class EmotionTile extends StatelessWidget {
  final String emotion;
  final String text;
  EmotionTile({super.key, required this.emotion, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 18),
          decoration: BoxDecoration(
              color: const Color(0xff408DC5),
              borderRadius: BorderRadius.circular(16)),
          child: Text(
            emotion,
            style: const TextStyle(fontSize: 35),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
