// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/cartOdersCard.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Widgets/folderCard.dart';
import 'package:giesse_app/presentation/Widgets/orderHistoryCard.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/Widgets/userCard.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class CatalogScreen extends StatefulWidget {
  CatalogScreen({Key key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
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
            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 13),
                child: buildUsersGridView(),
              ),
            ),
            buildFloatingSearchBar(
              context,
              SizeConfig.isPortrait,
              catalogScreen,
            ),
          ],
        ),
      ),
    );
  }

  Container buildUsersGridView() {
    return Container(
      // color: app_background,
      width: SizeConfig.screenWidth - 40,
      height: SizeConfig.screenHeight - 100,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 13,
            mainAxisSpacing: 13,
            childAspectRatio: 162 / 186),
        itemCount: 4,
        itemBuilder: (_, index) => FolderCard(),
      ),
    );
  }
}
