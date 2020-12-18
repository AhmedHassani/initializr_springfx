import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/presentation/Screens/signInScreen.dart';

import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/widgets.dart';

class T5Dialog extends StatefulWidget {
  static var tag = "/T5Dialog";

  @override
  T5DialogState createState() => T5DialogState();
}

class T5DialogState extends State<T5Dialog> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(),
      );
    });
    return SignInScreen();
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  // var width = MediaQuery.of(context).size.width;

  return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: const Offset(0.0, 10.0),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    )),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/images/giesseLogo2.svg',
                    width: 150,
                    height: 30,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: 59,
                      height: 59,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          'Admin name',
                          fontSize: 18.0,
                          isBold: true,
                        ),
                        text(
                          'example@email.com',
                          isPrimary: false,
                          textColor: t4_textColorSecondary,
                          fontSize: 14.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            child: Container(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      color: Colors.green,
                      width: 59,
                      height: 59,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        text(
                          'Database 1',
                          fontSize: 18.0,
                          isBold: true,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () => print('pressed'),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/settings/language.svg',
                          color: Colors.grey,
                          width: 24,
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: text(
                            'English',
                            fontSize: 18.0,
                            isBold: true,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
            child: GestureDetector(
              onTap: () => print('pressed'),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/settings/fast-sync.svg',
                          color: Colors.grey,
                          width: 24,
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            children: [
                              text(
                                'Use fast sync',
                                fontSize: 18.0,
                                isBold: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {
                        print('open');
                        value = true;
                        // setState(() {
                        //   isVolume = value;
                        // });
                      },
                      activeTrackColor: Color.fromRGBO(241, 245, 254, 1),
                      activeColor: Color.fromRGBO(112, 149, 254, 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 54, bottom: 25),
            child: text(
              'Only downloads important data while skipping media and large files.',
              isPrimary: false,
              fontSize: 14.0,
              textColor: t4_textColorSecondary,
              maxLine: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 19),
            child: GestureDetector(
              onTap: () => print('pressed'),
              child: Container(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/settings/database.svg',
                      color: Colors.grey,
                      width: 24,
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          text(
                            'Change Database',
                            fontSize: 18.0,
                            isBold: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: GestureDetector(
              onTap: () => print('pressed'),
              child: Container(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/settings/download-data.svg',
                      color: Colors.grey,
                      width: 24,
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          text(
                            'Download data',
                            fontSize: 18.0,
                            isBold: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 54, bottom: 25),
            child: text(
              'Last download: dd/mm/yyyy',
              isPrimary: false,
              fontSize: 14.0,
              textColor: t4_textColorSecondary,
              maxLine: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 21),
            child: GestureDetector(
              onTap: () => print('pressed'),
              child: Container(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/settings/log-out.svg',
                      color: Colors.grey,
                      width: 24,
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          text(
                            'Log out',
                            fontSize: 18.0,
                            isBold: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ));
}
