// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/Widgets/userCard.dart';

// This is the main screen to show list of customers
class CustomersScreen extends StatefulWidget {
  CustomersScreen({Key key}) : super(key: key);

  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  @override
  Widget build(BuildContext context) {
    Function onPressed =
        () => Navigator.of(context).pushReplacementNamed('/ProductsScreen');
    return Scaffold(
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      floatingActionButton: buildFloatingButton(
        context,
        Assets.icons.sharedIcons.addToCart.path,
        'Order',
        onPressed,
      ),
      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 80,
              child: buildUsersListView(),
            ),
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              actionsCustomersScreen,
            ),
          ],
        ),
      ),
    );
  }

// build list of user cards
  Container buildUsersListView() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 42,
        itemBuilder: (_, index) => UserCard(),
      ),
    );
  }
}
