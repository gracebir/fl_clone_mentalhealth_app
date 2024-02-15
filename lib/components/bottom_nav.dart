import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// https://dribbble.com/shots/15827917-Mental-Health-Support-App/attachments/7644833?mode=media
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade200,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue.shade600,
      onTap: _onItemTapped,
    );
  }
}
