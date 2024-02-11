import 'package:fl_clone_mentalhealth_app/components/emotion_tile.dart';
import 'package:flutter/material.dart';

class EmotionSection extends StatelessWidget {
  const EmotionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "How do you feel?",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                ". .",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EmotionTile(emotion: '😞', text: 'Badly'),
              EmotionTile(emotion: '😊', text: 'Fine'),
              EmotionTile(emotion: '😁', text: 'Well'),
              EmotionTile(emotion: '😄', text: 'Excellent')
            ],
          )
        ],
      ),
    );
  }
}
