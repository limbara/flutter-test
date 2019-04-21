import 'package:flutter/material.dart';
import './../widgets/BottomBar.dart';
import './../widgets/CardPost.dart';
import './../widgets/ProfileStory.dart';
import './../styles/screens/home.dart';
import './../styles/variables.dart';
import './../strings.dart';

class Home extends StatelessWidget {
  final VoidCallback onClickCamera;
  final VoidCallback onClickMessage;
  final VoidCallback onClickStories;

  Home(this.onClickCamera, this.onClickMessage, this.onClickStories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorWhite,
          elevation: 1,
          title: Text(
            HOME_APP_BAR_TITLE,
            style: styleAppBarTitle,
          ),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: colorBlack
            ),
            tooltip: 'Stories',
            onPressed: onClickCamera,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.camera_roll,
                color: colorBlack,
              ),
              tooltip: 'Stories',
              onPressed: onClickStories,
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: colorBlack,
              ),
              tooltip: 'Message',
              onPressed: onClickMessage,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ProfileStory(
                imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
              ),
              CardPost(),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar());
  }
}
