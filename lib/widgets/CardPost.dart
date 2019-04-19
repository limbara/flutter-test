import 'package:flutter/material.dart';
import './MyIconButton.dart';
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
            Image.asset('assets/instagram.png'),
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
}

Widget titleSection = Container(
  padding: paddingAllSmall,
  child: Row(
    children: <Widget>[
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

Widget actionsSection = Row(
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
