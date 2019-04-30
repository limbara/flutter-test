import 'package:flutter/material.dart';
import './../styles/utils.dart';
import './../styles/screens/login-page.dart';
import './../styles/variables.dart';
import './../utils.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        padding: paddingAllMedium,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/instagram_text.png',
              width: 140,
            ),
            boxHeightM,
            TextField(
              style: styleInput,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      paddingHorizontalSmall.add(paddingVerticalMedium),
                  hintText: 'Phone number, email or username'),
            ),
            boxHeightS,
            TextField(
              style: styleInput,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      paddingHorizontalSmall.add(paddingVerticalMedium),
                  hintText: 'Password'),
            ),
            boxHeightS,
            MaterialButton(
              onPressed: () {},
              minWidth: double.infinity,
              color: Colors.lightBlue[600],
              padding: paddingHorizontalSmall.add(paddingVerticalMedium),
              child: Text('Log in', style: styleButtonLogIn),
            ),
            gethelp(),
            orLine(),
          ],
        ),
      ),
    );
  }

  Widget gethelp() {
    return Container(
      padding: paddingAllMedium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Forgot your login details?', style: styleGetHelp),
          boxWidthXS,
          GestureDetector(
            onTap: () {
              final snackBar = SnackBar(
                content: Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change!
                  },
                ),
              );

              // Find the Scaffold in the Widget tree and use it to show a SnackBar!
              _scaffoldKey.currentState.showSnackBar(snackBar);
            },
            child: Text('Get help singing in', style: styleGetHelpButton),
          )
        ],
      ),
    );
  }

  Widget orLine() {
    return Container(
      padding: paddingBottomMedium,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1.0, color: colorGrey))),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text('OR', style: styleOr),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1.0, color: colorGrey))),
            ),
          )
        ],
      ),
    );
  }
}
