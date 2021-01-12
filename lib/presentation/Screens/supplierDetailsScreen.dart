// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

class SupplierDetailsScreen extends StatefulWidget {
  const SupplierDetailsScreen({Key key}) : super(key: key);

  @override
  _SupplierDetailsScreenState createState() => _SupplierDetailsScreenState();
}

class _SupplierDetailsScreenState extends State<SupplierDetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(text: 'Menu 1'),
    Tab(text: 'Menu 2'),
    Tab(text: 'Menu 3'),
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
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
          'Supplier Name',
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
        ],
      ),
    );
  }
}
