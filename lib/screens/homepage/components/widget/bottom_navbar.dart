import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  final void Function(int) tappedIcon;
  final int screenIndex;

  const BottomNavBar({
    super.key,
    required this.tappedIcon,
    required this.screenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: screenIndex,
      onTap: tappedIcon,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home_filled),
          icon: Icon(Icons.home_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.search),
          icon: Icon(Icons.search_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.add_box),
          icon: Icon(Icons.add_box_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.ondemand_video_outlined),
          icon: Icon(Icons.ondemand_video),
          label: '',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}
