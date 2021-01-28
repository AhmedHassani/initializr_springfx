// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/cartOdersCard.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// This Screen is to show the cart of open/closed orders
class CartScreen extends StatefulWidget {
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // TabController _controller;
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
            // This Stack is contains of search bar, chips and the listtile of cards of orders
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
              child: buildChips(),
            ),
          ],
        ),
      ),
    );
  }

// This method to build the chips
  Wrap buildChips() {
    return Wrap(
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
    );
  }

// this Method to build cards of cart orders
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
