// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/orderHistoryCard.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// This Screen to show the orders history for a user that has been selected and the ablity to edit it
class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key key}) : super(key: key);

  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  // TabController _controller;
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
                child: buildOrdersListView(),
              ),
              Positioned(
                top: 115,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
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
        borderRadius: BorderRadius.circular(10),
        child: SvgPicture.asset(
          Assets.icons.userAvater.path,
          // width: MediaQuery.of(context).size.width / 4.5,
          // height: MediaQuery.of(context).size.width / 4.7,
          fit: BoxFit.fill,
        ),
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
          textColor: mainGreenColor,
        ),
      ),
    );
  }

  Container buildOrdersListView() {
    return Container(
      color: app_background,
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight - 100,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (_, index) => const OrderHistoryCard(),
      ),
    );
  }
}
