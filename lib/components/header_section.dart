import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Hi, Jared!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade100),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("23 jan, 2021",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontWeight: FontWeight.normal,
                      fontSize: 16)),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff408DC5),
                borderRadius: BorderRadius.circular(14)),
            padding: const EdgeInsets.all(15),
            child: const Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
