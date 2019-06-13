import 'package:flutter/material.dart';
import 'package:zhihu_daily/net/net_helper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    loadData();
    return _NewsList();
  }

  void loadData() {
    NetworkHelper.getInstance().getLatestNews();
  }
}

class _NewsList extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return _NewsListItem();
      },
    );
  }
}

class _NewsListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: NetworkImage(
                              'https://avatars8.githubusercontent.com/u/5389159?s=460&v=4'),
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              '多重人格是怎样的？',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              '张一山柒个我应接不暇？现实中还有100多个的',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
