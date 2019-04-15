import 'package:flutter/material.dart';
import './../widgets/BottomBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          tooltip: 'Stories',
          onPressed: null,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.camera_roll,
              color: Colors.white,
            ),
            tooltip: 'Stories',
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            tooltip: 'Message',
            onPressed: null,
          )
        ],
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
