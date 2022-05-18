import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        //showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        //Los labels se mueven con una animación, su label => currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              label: 'Calendar',
              icon: Icon(
                Icons.calendar_month,
                size: 25,
              )),
          BottomNavigationBarItem(
              label: 'Stats', icon: Icon(Icons.stacked_bar_chart, size: 25)),
          BottomNavigationBarItem(
              label: 'Stats',
              icon: Icon(Icons.supervised_user_circle, size: 25))
        ]);
  }
}
