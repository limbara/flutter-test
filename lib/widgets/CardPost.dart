import 'package:flutter/material.dart';
import './MyIconButton.dart';
import './ProfilePicture.dart';
import './../styles/widgets/card-post.dart';
import './../styles/utils.dart';
import './../styles/variables.dart';

class CardPost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
      Container(
        margin: marginBottomSmall,
        child: Column(
          children: <Widget>[
            titleSection,
            FadeInImage.assetNetwork(
              image: 'https://www.iti.org.uk/images/article-images/Profile-Interview-Photo---Fiona-Gray.jpg',         
              placeholder: 'assets/instagram.png',
              fit: BoxFit.cover,
            ),
            Container(
              padding: paddingAllSmall,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  actionsSection,
                  Container(
                    margin: marginVerticalSmall,
                    child: Text(
                      '831 likes',
                      style: styleLikes,
                    ),
                  ),
                  Container(
                    margin: marginBottomSmall,
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Username',
                          style: styleUserName,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'caption caption caption caption',
                          style: styleCaptiontext
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: marginBottomSmall,
                    child: Text(
                      '1 day ago',
                      style: styleTimeStamp
                    ),
                  )
                ],
              ),
            )
          ],
        )
      );
  }

  final Widget titleSection = Container(
    padding: paddingAllSmall,
    child: Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          padding: paddingRightSmall,
          child: ProfilePicture(
            initial: 'AH',
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Username',
                style: styleUserName,
              ),
              Text(
                'Place Name',
                style: stylePlaceName,
              )
            ],
          )
        ),
        MyIconButton(
          onPressed: (){},
          icon: Icon(
            Icons.more_vert,
            color: colorBlack,
            size: 30.0,
          ) 
        ),
      ],
    ),
  );

  final Widget actionsSection = Row(
    children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            MyIconButton(
              onPressed: (){},
              icon: Icon(
                Icons.favorite_border,
                color: colorBlack,
                size: 30.0,
              )
            ),
            SizedBox(
              width: 10,
            ),
            MyIconButton(
              onPressed: (){},
              icon: Icon(
                Icons.chat_bubble_outline,
                color: colorBlack,
                size: 30.0,
              )
            ),
            SizedBox(
              width: 10,
            ),
            MyIconButton(
              onPressed: (){},
              icon: Icon(
                Icons.send,
                color: colorBlack,
                size: 30.0,
              )
            )
          ],
        ),
      ),
      MyIconButton(
        onPressed: (){},
        icon: Icon(
          Icons.bookmark_border,
          color: colorBlack,
          size: 30.0
        )
      )
    ],
  );

}
