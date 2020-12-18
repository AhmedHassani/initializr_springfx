import 'package:ai_progress/ai_progress.dart';
import 'package:flutter/material.dart';

class DownloadProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 238,
            height: 238,
            padding: EdgeInsets.all(5),
            child: AirCircularStateProgressIndicator(
              pathColor: Color.fromRGBO(239, 252, 234, 100),
              size: Size(238, 238),
              value: 7.5 / 10 * 100, //1~100
              valueColor: ColorTween(
                begin: Color.fromRGBO(67, 202, 91, 100),
                end: Color.fromRGBO(67, 202, 91, 100),
              ).transform(1 / 10),
              pathStrokeWidth: 10,
              valueStrokeWidth: 10,

              roundCap: true,
            ),
          ),
          Text(
            "${(7.5 / 10 * 100).toInt()}%",
            style: TextStyle(
              color: Color.fromRGBO(67, 202, 91, 100),
              fontSize: 48,
            ),
          ),
        ],
      ),
    );
  }
}
