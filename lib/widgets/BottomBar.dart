import 'package:flutter/material.dart';
import './../styles/variables.dart';

class BottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomBarState();
  }
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.home, color: colorPrimaryAccent),
            title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.search, color: colorPrimaryAccent),
            title: Text('Search')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.add_box, color: colorPrimaryAccent),
            title: Text('Add')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.favorite, color: colorPrimaryAccent),
            title: Text('Favorite')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              color: Colors.black,
            ),
            activeIcon: Icon(Icons.face, color: Colors.deepPurpleAccent),
            title: Text('User'))
      ],
    );
  }
}
