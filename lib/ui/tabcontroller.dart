import 'package:flutter/material.dart';
import 'setting.dart';
import 'home.dart';
import 'idea.dart';
import 'market.dart';
import 'notification.dart';
import 'mine.dart';

class MyTabController extends StatefulWidget {
  MyTabController({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Setting();
                  }
                ));
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              title: Text('首页'),
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              title: Text('想法'),
              icon: Icon(Icons.format_indent_decrease),
              backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
              title: Text('市场'),
              icon: Icon(Icons.markunread),
              backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
              title: Text('通知'),
              icon: Icon(Icons.notifications),
              backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
              title: Text('我的'),
              icon: Icon(Icons.people),
              backgroundColor: Colors.blue
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            IdeaPage(),
            MarketPage(),
            NotificationPage(),
            MinePage(),
          ],
        ),
      ),
    );
  }
}