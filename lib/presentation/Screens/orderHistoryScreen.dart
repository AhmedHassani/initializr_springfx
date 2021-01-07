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

class OrderHistoryScreen extends StatefulWidget {
  OrderHistoryScreen({Key key}) : super(key: key);

  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  TabController _controller;
  @override
  Widget build(BuildContext context) {
    // Function onPressed =
    //     () => Navigator.of(context).pushReplacementNamed('/ProductsScreen');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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
                orderHistoryScreen,
              ),
              Positioned(
                top: 170,
                child: buildUsersListView(),
              ),
              Positioned(
                top: 115,
                left: 10,
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  color: Colors.white,
                  width: SizeConfig.screenWidth,
                  child: buildListTile(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile() {
    return ListTile(
      leading: ClipRRect(
        child: SvgPicture.asset(
          Assets.icons.userAvater.path,
          // width: MediaQuery.of(context).size.width / 4.5,
          // height: MediaQuery.of(context).size.width / 4.7,
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                    'Order History for',
                    textColor: textColorPrimary,
                    fontSize: 12.0,
                  ),
                  text(
                    'User Name',
                    fontSize: 18.0,
                    textColor: textColorPrimary,
                    isBold: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: text(
          'Change',
          fontSize: 12.0,
          isPrimary: false,
          textColor: mainBlueColor,
        ),
      ),
    );
  }

  Container buildUsersListView() {
    return Container(
      color: app_background,
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) => CartOrdersCard(),
      ),
    );
  }
}
