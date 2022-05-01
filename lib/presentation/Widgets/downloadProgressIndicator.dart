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
            padding: const EdgeInsets.all(5),
            child: AirCircularStateProgressIndicator(
              pathColor: const Color.fromRGBO(239, 252, 234, 100),
              size: const Size(238, 238),
              value: 7.5 / 10 * 100, //1~100
              valueColor: Colors.green.shade400,
              pathStrokeWidth: 10,
              valueStrokeWidth: 10,

              roundCap: true,
            ),
          ),
          Text(
            "${(7.5 / 10 * 100).toInt()}%",
            style: TextStyle(
              color: const Color.fromRGBO(67, 202, 91, 100),
              fontSize: 48,
            ),
          ),
        ],
      ),
    );
  }
}
