import 'package:flutter/material.dart';
import 'package:giesse_app/infrastructure/models/drawerItem.dart';
import 'package:giesse_app/presentation/utils/widgets.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationDrawerState();
  }
}

class NavigationDrawerState extends State<NavigationDrawer> {
  int _selectedIndex = 0;

  final drawerItemsCategory1 = [
    DrawerItem(name: "Customers", iconPath: 'assets/icons/user.png'),
    DrawerItem(name: "Map", iconPath: 'assets/icons/map.png'),
    DrawerItem(name: "Order History", iconPath: 'assets/icons/tag.png'),
    DrawerItem(name: "Cart", iconPath: 'assets/icons/cart.png'),
    DrawerItem(name: "Taking", iconPath: 'assets/icons/box.png'),
    DrawerItem(name: "Agents", iconPath: 'assets/icons/agents.png'),
    DrawerItem(name: "Suppliers", iconPath: 'assets/icons/users.png'),
    DrawerItem(
        name: "Agent Statistics", iconPath: 'assets/icons/pie-chart.png'),
  ];
  final drawerItemsCategory2 = [
    DrawerItem(name: "Catalogue", iconPath: 'assets/icons/image.png'),
    DrawerItem(name: "Remote Files", iconPath: 'assets/icons/speaker.png'),
    DrawerItem(name: "CRM", iconPath: 'assets/icons/compass.png'),
  ];
  final drawerItemsCategory3 = [
    DrawerItem(name: "About", iconPath: 'assets/icons/about.png'),
  ];
  // _getDrawerItemScreen(int pos) {
  //   return HomeScreen();
  // }

  _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
      // _getDrawerItemScreen(_selectedIndex);
    });
    Navigator.of(context).pop(); // close the drawer
    //  Navigator.push(
    //    context,
    //      MaterialPageRoute(
    //      builder: (context) => _getDrawerItemScreen(_selectedIndex),
    //    ),
    //  );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions1 = [];
    List<Widget> drawerOptions2 = [];
    List<Widget> drawerOptions3 = [];
    for (var i = 0; i < drawerItemsCategory1.length; i++) {
      var d = drawerItemsCategory1[i];
      drawerOptions1.add(buildListTile(d, i));
    }
    for (var i = 0; i < drawerItemsCategory2.length; i++) {
      var d = drawerItemsCategory2[i];
      drawerOptions2.add(buildListTile(d, i));
    }
    for (var i = 0; i < drawerItemsCategory3.length; i++) {
      var d = drawerItemsCategory3[i];
      drawerOptions3.add(buildListTile(d, i));
    }

    return Drawer(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset(
                'assets/images/giesseLogo2.png',
                width: 162,
              ),
            ),
          ),
          Divider(),
          Column(children: drawerOptions1),
          Divider(),
          Column(children: drawerOptions2),
          Divider(),
          Column(children: drawerOptions3),
        ],
      ),
    );
  }

  ListTile buildListTile(DrawerItem d, int i) {
    return ListTile(
      leading: Image.asset(
        d.iconPath,
        color: Colors.grey,
      ),
      title: text(
        d.name,
        fontSize: 18.0,
      ),
      selected: i == _selectedIndex,
      contentPadding: EdgeInsets.only(left: 25),
      focusColor: Colors.red,
      horizontalTitleGap: 15.0,
      onTap: () => _onSelectItem(i),
    );
  }
}
