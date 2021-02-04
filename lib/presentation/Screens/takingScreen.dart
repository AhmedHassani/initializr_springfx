// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/takingUserCard.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// Shows the list of total payments recieved/due
class TakingScreen extends StatefulWidget {
  const TakingScreen({Key key}) : super(key: key);

  @override
  _TakingScreenState createState() => _TakingScreenState();
}

class _TakingScreenState extends State<TakingScreen> {
  @override
  Widget build(BuildContext context) {
    // Function onPressed =
    //     () => Navigator.of(context).pushReplacementNamed('/ProductsScreen');
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
              top: 80,
              child: buildTakingListView(),
            ),
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              actionsTakingScreen,
            ),
          ],
        ),
      ),
    );
  }

  Container buildTakingListView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 42,
        itemBuilder: (_, index) => const TakingUserCard(),
      ),
    );
  }
}
