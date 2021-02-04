// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Widgets/folderCard.dart';
import 'package:giesse_app/presentation/Widgets/searchBar.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';

// This screen to show the pictrues catalog
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
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
                child: buildFoldersGridView(),
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

  Container buildFoldersGridView() {
    return Container(
      width: SizeConfig.screenWidth - 40,
      height: SizeConfig.screenHeight - 100,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 13,
            mainAxisSpacing: 13,
            childAspectRatio: 162 / 186),
        itemCount: 4,
        itemBuilder: (_, index) => const FolderCard(),
      ),
    );
  }
}
