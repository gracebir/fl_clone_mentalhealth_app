import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: const Color(0xff408DC5),
          borderRadius: BorderRadius.circular(20)),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white)),
          ))
        ],
      ),
    );
  }
}
