// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/infrastructure/dummyData/databases.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import '../utils/responsiveUI.dart';

// this screen to give the user the chosse of what needed database to work on.
class DatabaseSelection extends StatelessWidget {
  const DatabaseSelection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 45, 20, 15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(214, 214, 214, 0.25),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          text(
                            'Enable fast Editing',
                            fontSize: 18.0,
                            isBold: true,
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
                            activeTrackColor: secondGreenColor,
                            activeColor: mainGreenColor,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: text(
                          'Only downloads important data while skipping media and large files.',
                          isCentered: false,
                          fontSize: 12.0,
                          maxLine: 2,
                          isPrimary: false,
                          textColor: textColorSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: buildGridView(),
              ),
              buildSyncButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Container buildSyncButton(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: mainGreenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: FlatButton(
        onPressed: () => Navigator.of(context)
            .pushReplacementNamed('/DownloadingDataScreen'),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: text(
            'Sync',
            fontSize: 18.0,
            isPrimary: false,
            textColor: Colors.white,
            isBold: true,
          ),
        ),
      ),
    );
  }

// build grid to display diffrents databases
  GridView buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 15),
      itemCount: databases.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 13,
          mainAxisSpacing: 15,
          childAspectRatio: 0.8,
          crossAxisCount: (SizeConfig.isPortrait == true) ? 2 : 3),
      itemBuilder: (BuildContext context, int index) {
        return buildDatabaseCard(index);
      },
    );
  }

  Container buildDatabaseCard(int index) {
    return Container(
      height: 188,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(214, 214, 214, 0.25),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                text(
                  databases[index].name,
                  fontSize: 16.0,
                  isBold: true,
                ),
                Radio(
                  value: true,
                  groupValue: 2,
                  onChanged: (value) {
                    print('open radio');
                    value = true;
                    // setState(() {
                    //   isVolume = value;
                    // });
                  },
                  activeColor: const Color.fromRGBO(112, 149, 254, 1),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: databases[index].color,
                  ),
                  Image.asset(
                    'assets/images/DatabaseIcon.png',
                    color: databases[index].colorIcon,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
