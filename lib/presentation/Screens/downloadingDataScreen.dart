import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/Widgets/downloadProgressIndicator.dart';

class DownloadingDataScreen extends StatelessWidget {
  const DownloadingDataScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = (17.6 / 100) * SizeConfig.screenHeight;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 98,
        centerTitle: true,
        title: text(
          'Downloading Data',
          fontSize: 18.0,
          isPrimary: false,
          textColor: textColorSecondary,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
          top: padding,
          bottom: padding,
        ),
        //TODO remove GestureDetector
        child: GestureDetector(
          onTap: () =>
              Navigator.of(context).pushReplacementNamed('/CustomersScreen'),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(214, 214, 214, 0.25),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/images/DatabaseIcon.png',
                          height: 23,
                          width: 23,
                        ),
                      ),
                      text(
                        'Database 1',
                        fontSize: 16.0,
                      ),
                    ],
                  ),
                ),
                DownloadProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 38),
                  child: text('Downloading Database',
                      fontSize: 16.0,
                      textColor: textColorSecondary,
                      isPrimary: false),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
