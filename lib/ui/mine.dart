import 'package:flutter/material.dart';
import 'login.dart';
import 'setting.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('login'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  }
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}