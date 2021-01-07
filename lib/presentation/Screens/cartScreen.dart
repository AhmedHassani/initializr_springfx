import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/cartOdersCard.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/Widgets/userCard.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TabController _controller;
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
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              actionsCustomersScreen,
            ),
            Positioned(
              top: 135,
              child: buildUsersListView(),
            ),
            Positioned(
              top: 100,
              left: 25,
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text('Open'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text('Closed'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildUsersListView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) => CartOrdersCard(),
      ),
    );
  }
}
