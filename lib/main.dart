import 'package:flutter/material.dart';
import 'strings.dart';
import './screens/Home.dart';
import './screens/MessagePage.dart';
import './screens/CameraPage.dart';
import './screens/SearchPage.dart';
import './screens/LoginPage.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      // initialRoute: '/',
      //   routes: <String, WidgetBuilder>{
      //   '/': (context) => MyApp(),
      //   '/search': (context) => SearchPage(),
      // },
      home: LoginPage(),
    );
  }
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController tabController;

  void onClickCamera() {
    tabController.animateTo(0);
  }

  void onClickMessage() {
    tabController.animateTo(2);
  }

  void onClickStories() {
    print("Stories");
  }

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          CameraPage(),
          Home(this.onClickCamera, this.onClickMessage, this.onClickStories),
          MessagePage()
        ],
      ),
    );
  }
}
