// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/colors.dart';
import 'package:giesse_app/presentation/Widgets/text.dart';

// Show all details of a user
class AgentDetailsScreen extends StatefulWidget {
  const AgentDetailsScreen({Key key}) : super(key: key);

  @override
  _AgentDetailsScreenState createState() => _AgentDetailsScreenState();
}

class _AgentDetailsScreenState extends State<AgentDetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    const Tab(text: 'Invoiced Order'),
    const Tab(text: 'Documents'),
    const Tab(text: 'Due Dates'),
    const Tab(text: 'Qty. Sold'),
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
      print("Selected Index: ${_controller.index}");
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
          labelColor: const Color.fromRGBO(94, 136, 254, 1),
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
          'Agent Name',
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
            style: const TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: const TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: const TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: const TextStyle(fontSize: 40),
          )),
        ],
      ),
    );
  }
}
