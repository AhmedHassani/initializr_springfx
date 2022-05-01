// @dart=2.9
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/agentsCard.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// Show list of suppliers
class AgentsScreen extends StatefulWidget {
  const AgentsScreen({Key key}) : super(key: key);

  @override
  _AgentsScreenState createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 110,
              child: buildAgentsListView(),
            ),
            Positioned(
              top: 120,
              left: 30,
              child: text(
                'Agents',
                isPrimary: false,
                textColor: textColorSecondary,
                fontSize: 18.0,
              ),
            ),
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              agentsScreen,
            ),
          ],
        ),
      ),
    );
  }

  Container buildAgentsListView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) => const AgentsCard(),
      ),
    );
  }
}
