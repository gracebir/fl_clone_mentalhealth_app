import 'package:fl_clone_mentalhealth_app/components/bottom_nav.dart';
import 'package:fl_clone_mentalhealth_app/components/emotion_section.dart';
import 'package:fl_clone_mentalhealth_app/components/exercise_tile.dart';
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
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: const Color(0xff2C7FBD),
      body: Column(
        children: [
          const HeaderSection(),
          const SearchSection(),
          const SizedBox(
            height: 25,
          ),
          const EmotionSection(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercises",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey.shade900,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ExerciseTile(
                        icon: Icons.favorite,
                        color: Colors.orange,
                        exercise: "Speaking skill",
                        numberOfExercise: "16 exercises",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExerciseTile(
                        icon: Icons.person_3,
                        color: const Color(0xff2D80BE),
                        exercise: "Reading Spead",
                        numberOfExercise: "8 exercises",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
