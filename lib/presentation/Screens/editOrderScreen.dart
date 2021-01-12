// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/textField.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/Widgets/downloadProgressIndicator.dart';

class EditOrderScreen extends StatelessWidget {
  const EditOrderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 98,
        centerTitle: true,
        title: text(
          'Edit Order',
          fontSize: 18.0,
          isPrimary: false,
          textColor: textColorSecondary,
        ),
        actions: [
          IconButton(
            //TODO
            onPressed: () => print('pressed'),
            icon: SvgPicture.asset(
              Assets.icons.sharedIcons.save.path,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TODO fix what type of input
            buildSection1(),
            buildSection2(),
          ],
        ),
      ),
    );
  }

  Padding buildSection2() {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: text(
                'Product Name',
                fontSize: 20.0,
                isBold: true,
              ),
            ),
            Divider(),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                hint: 'Type',
                isPassword: false,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                hint: 'Description',
                isPassword: false,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                isPassword: false,
                hint: 'Gift',
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                isPassword: false,
                hint: 'Quantity',
              ),
            ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: text(
                'User Name',
                fontSize: 20.0,
                isBold: true,
              ),
            ),
            Divider(),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                hint: 'Delivery',
                isPassword: false,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                hint: 'Type',
                isPassword: false,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25, right: 15.5, left: 15.5),
              child: EditText(
                isPassword: false,
                hint: 'Notes',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
