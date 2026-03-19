import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xBFD4E157),
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Home',
          activeIcon: const Icon(Icons.home, color: Color(0xBFD4E157)),
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Market',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}