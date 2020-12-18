import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/utils/uiResponsive.dart';
import 'package:giesse_app/presentation/Screens/drawerScreen.dart';
import 'package:giesse_app/presentation/Widgets/userCard.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class CustomersScreen extends StatefulWidget {
  CustomersScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CustomersScreen> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      drawer: Drawer(
        child: NavigationDrawer(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            Text('Order'),
            Icon(
              Icons.shopping_cart,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: [
            // buildMap(),
            // buildBottomNavigationBar(),
            Positioned(
              top: 80,
              child: buildUsersListView(),
            ),
            Positioned(
              child: buildFloatingSearchBar(context, isPortrait),
            ),
          ],
        ),
      ),
    );
  }

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

  FloatingSearchBar buildFloatingSearchBar(
      BuildContext context, bool isPortrait) {
    return FloatingSearchBar(
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.fromLTRB(5, 2, 0, 2),

      leadingActions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ],
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 500),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      maxWidth: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 100),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      automaticallyImplyDrawerHamburger: false,
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(
              Icons.filter_list_alt,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return Container();
      },
    );
  }
}

class BuildListViewUsers extends StatelessWidget {
  const BuildListViewUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 42,
      itemBuilder: (_, index) => ListTile(
        leading: Text(index != 0 ? 'Item $index' : 'hello'),
      ),
    );
  }
}

class MyAwesomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Wrap your Scrollable in a FloatingSearchBarScrollNotifier
    /// to indicate that the FloatingSearchBar should react to
    /// scroll events from this Scrollable.
    return FloatingSearchBarScrollNotifier(
      child: ListView.builder(
        itemCount: 42,
        itemBuilder: (_, index) => ListTile(
          leading: Text(index != 0 ? 'Item $index' : 'hello'),
        ),
      ),
    );
  }
}
