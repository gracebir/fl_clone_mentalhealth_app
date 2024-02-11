import 'package:fl_clone_mentalhealth_app/components/emotion_section.dart';
import 'package:fl_clone_mentalhealth_app/components/header_section.dart';
import 'package:fl_clone_mentalhealth_app/components/search_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff2C7FBD),
      body: Column(
        children: [
          HeaderSection(),
          SearchSection(),
          SizedBox(
            height: 25,
          ),
          EmotionSection()
        ],
      ),
    ));
  }
}
