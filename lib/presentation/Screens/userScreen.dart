// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(text: 'General'),
    Tab(text: 'Sell'),
    Tab(text: 'Info'),
    Tab(text: 'Note'),
    Tab(text: 'Agents'),
    Tab(text: 'Connection'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    Function onPressed =
        () => Navigator.of(context).pushNamed('/InsertOrderScreen');
    return Scaffold(
      drawer: NavigationDrawer(),
      floatingActionButton: buildFloatingButton(
          context, Assets.icons.sharedIcons.addToCart.path, 'Order', onPressed),
      appBar: AppBar(
        bottom: TabBar(
          // automaticIndicatorColorAdjustment: true,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Color.fromRGBO(94, 136, 254, 1),
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 98,
        centerTitle: true,
        title: text(
          'User Name',
          fontSize: 18.0,
          isPrimary: false,
          textColor: textColorSecondary,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
        ],
      ),
    );
  }
}
