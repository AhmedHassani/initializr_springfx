// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/suppliersCard.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// Show list of suppliers
class SuppliersScreen extends StatefulWidget {
  const SuppliersScreen({Key key}) : super(key: key);

  @override
  _SuppliersScreenState createState() => _SuppliersScreenState();
}

class _SuppliersScreenState extends State<SuppliersScreen> {
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
              top: 110,
              child: buildSuppliersListView(),
            ),
            Positioned(
              top: 100,
              left: 30,
              child: text(
                'Suppliers',
                isPrimary: false,
                textColor: textColorSecondary,
                fontSize: 18.0,
              ),
            ),
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              suppliersScreen,
            ),
          ],
        ),
      ),
    );
  }

  Container buildSuppliersListView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index) => const SuppliersCard(),
      ),
    );
  }
}
