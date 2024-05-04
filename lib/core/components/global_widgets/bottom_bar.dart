import 'package:flutter/material.dart';
import 'package:ufc_caller/core/constants/colors_constants.dart';
import 'package:ufc_caller/core/constants/string_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorConstants.instance.amber,
      unselectedItemColor: ColorConstants.instance.white,
      backgroundColor: ColorConstants.instance.codGray,
      currentIndex: currentIndex,
      onTap: onTap,
      iconSize: 30,
      selectedFontSize: 18,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w900,
        letterSpacing: 1,
      ),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: StringConstants.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.white),
          label: StringConstants.search,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm, color: Colors.white),
          label: StringConstants.alarm,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.white),
          label: StringConstants.settings,
        ),
      ],
    );
  }
}
