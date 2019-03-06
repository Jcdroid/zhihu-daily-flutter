import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 48.0,
            child: FlatButton(
              textColor: Colors.black,
              child: Text('清除缓存'),
              onPressed: () {
                print('正在清除缓存中...');
              },
            ),
          ),
        ],
      ),
    );
  }
}