// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:giesse_app/presentation/Widgets/floatingButton.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/utils/listOfActionsSearchBar.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

// Screen to show activity informaton of a supplier, each tab has details
// TODO FIX TABS AND THE SEARCHBAR
class SupplierActivityScreen extends StatefulWidget {
  const SupplierActivityScreen({Key key}) : super(key: key);

  @override
  _SupplierActivityScreenState createState() => _SupplierActivityScreenState();
}

class _SupplierActivityScreenState extends State<SupplierActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    const Tab(text: 'Leads'),
    const Tab(text: 'Offers'),
    const Tab(text: 'New Leads'),
    const Tab(text: 'Performed activity'),
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
    final Function onPressed =
        () => Navigator.of(context).pushNamed('/InsertOrderScreen');
    return Scaffold(
      drawer: NavigationDrawer(),
      floatingActionButton: buildFloatingButton(
          context, Assets.icons.sharedIcons.plus.path, 'Activity', onPressed),
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
        toolbarHeight: 300,
        excludeHeaderSemantics: true,
        centerTitle: true,
        title: Container(
          height: 100,
          width: 500,
          child: FloatingSearchBar(
            borderRadius: BorderRadius.circular(10),
            padding: EdgeInsets.fromLTRB(5, 2, 0, 2),
            // Icons on left
            leadingActions: [
              FloatingSearchBarAction(
                showIfOpened: false,
                child: CircularButton(
                  icon: SvgPicture.asset(
                    Assets.icons.menu.menuListIcon.path,
                    color: Colors.black,
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ],
            hint: 'Search',
            scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
            transitionDuration: const Duration(milliseconds: 100),
            transitionCurve: Curves.easeInOut,
            physics: const BouncingScrollPhysics(),
            axisAlignment: SizeConfig.isPortrait ? 0.0 : -1.0,
            openAxisAlignment: 0.0,

            debounceDelay: const Duration(milliseconds: 100),
            onQueryChanged: (query) {
              // Call your model, bloc, controller here.
            },
            // Specify a custom transition to be used for
            // animating between opened and closed stated.
            transition: CircularFloatingSearchBarTransition(),
            automaticallyImplyDrawerHamburger: false,
            // Icons on the right
            actions: actionsCustomersScreen,
            //TODO here to show search results
            builder: (context, transition) {
              return Container();
            },
          ),
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
