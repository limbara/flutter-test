import 'package:flutter/material.dart';
import './../widgets/BottomBar.dart';

class Home extends StatelessWidget {
  VoidCallback onClickCamera;
  VoidCallback onClickMessage;
  VoidCallback onClickStories;

  Home(this.onClickCamera, this.onClickMessage, this.onClickStories);

  var moviesTitles = ['Inception', 'Heat', 'Spider Man'];

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
            onPressed: onClickCamera,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.camera_roll,
                color: Colors.white,
              ),
              tooltip: 'Stories',
              onPressed: onClickStories,
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              tooltip: 'Message',
              onPressed: onClickMessage,
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: moviesTitles.map((title) {
            return Container(
                padding: EdgeInsets.all(4),
                child: Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    ),Text(
                      title,
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ));
          }).toList(),
        ),
        bottomNavigationBar: BottomBar());
  }
}
