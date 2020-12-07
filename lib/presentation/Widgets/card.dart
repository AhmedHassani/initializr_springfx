import 'package:flutter/material.dart';

class BottomCards extends StatelessWidget {
  final String cardTitle;
  final String cardContent;
  BottomCards(this.cardTitle, this.cardContent);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {},
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Text('s'),
                  Spacer(),
                  new ButtonBar(
                    children: <Widget>[
                      new IconButton(
                        icon: Icon(Icons.arrow_back),
                        //onPressed: REFRESH,
                      ),
                      new IconButton(
                        icon: Icon(
                          Icons.access_alarm,
                          color: Colors.redAccent,
                        ),
                        //onPressed: BOOKMARK,
                      ),
                      new IconButton(
                        icon: Icon(Icons.content_copy),
                        //onPressed: COPY,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
