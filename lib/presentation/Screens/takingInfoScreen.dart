// @dart=2.9
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Screens/cashOutDialog.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Widgets/textField.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/Widgets/downloadProgressIndicator.dart';

class TakingInfoScreen extends StatelessWidget {
  const TakingInfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function onPressed =
        //TODO
        () => Future.delayed(const Duration(), () {
              showDialog(
                context: context,
                builder: (BuildContext context) => CashOutDialog(),
              );
            });
    return Scaffold(
      floatingActionButton: buildFloatingButton(
        context,
        Assets.icons.sharedIcons.money.path,
        'Cash out',
        onPressed,
      ),
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 98,
        centerTitle: true,
        title: text(
          'Invoice n #123456',
          fontSize: 18.0,
          isPrimary: false,
          textColor: textColorSecondary,
        ),
        actions: [
          IconButton(
            //TODO
            onPressed: () => print('pressed'),
            icon: SvgPicture.asset(
              Assets.icons.sharedIcons.edit.path,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TODO fix what type of input
            buildSection1(),
          ],
        ),
      ),
    );
  }

  Padding buildSection1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  text(
                    'Cash',
                    fontSize: 18.0,
                    isBold: true,
                  ),
                  text(
                    '€60.00',
                    fontSize: 18.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: text(
                  '20/12/2020',
                  isPrimary: false,
                  textColor: textColorSecondary,
                  fontSize: 16.0,
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  text(
                    'Bank Transfer',
                    fontSize: 18.0,
                    isBold: true,
                  ),
                  text(
                    '€100.00',
                    fontSize: 18.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: text(
                  '20/12/2020',
                  isPrimary: false,
                  textColor: textColorSecondary,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
