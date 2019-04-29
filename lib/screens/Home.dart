import 'package:flutter/material.dart';

import './../widgets/BottomBar.dart';
import './../widgets/CardPost.dart';
import './../widgets/ProfileStory.dart';

import './../styles/screens/home.dart';
import './../styles/utils.dart';
import './../styles/variables.dart';

import './../utils.dart';

import './../strings.dart';

class Home extends StatelessWidget {
  final VoidCallback onClickCamera;
  final VoidCallback onClickMessage;
  final VoidCallback onClickStories;

  Home(this.onClickCamera, this.onClickMessage, this.onClickStories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.getAppBar(context),
      body: SafeArea(
        child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              this.getStories(context),
              CardPost(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }

  Widget getAppBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Widget getStories(BuildContext context) {
    return Container(
      height: getScreenHeightPercentage(10, context),
      margin: paddingVerticalMedium,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: getScreenHeightPercentage(10, context),
            height: getScreenHeightPercentage(10, context),
            margin: marginHorizontalSmall,
            child: ProfileStory(
              imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
            ),
          ),
          Container(
            width: getScreenHeightPercentage(10, context),
            height: getScreenHeightPercentage(10, context),
            margin: marginHorizontalSmall,
            child: ProfileStory(
              imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
            ),
          ),
          Container(
            width: getScreenHeightPercentage(10, context),
            height: getScreenHeightPercentage(10, context),
            margin: marginHorizontalSmall,
            child: ProfileStory(
              imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
            ),
          ),
          Container(
            width: getScreenHeightPercentage(10, context),
            height: getScreenHeightPercentage(10, context),
            margin: marginHorizontalSmall,
            child: ProfileStory(
              imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
            ),
          ),
          Container(
            width: getScreenHeightPercentage(10, context),
            height: getScreenHeightPercentage(10, context),
            margin: marginHorizontalSmall,
            child: ProfileStory(
              imageUrl: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',
            ),
          )
        ],
      ),
    );
  }
}
