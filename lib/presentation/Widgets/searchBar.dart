import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

Widget buildFloatingSearchBar(
    BuildContext context, bool isPortrait, List<Widget> actions) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
    child: FloatingSearchBar(
      borderRadius: BorderRadius.circular(10),
      padding: const EdgeInsets.fromLTRB(5, 2, 0, 2),
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
      // Icons on the right
      actions: actions,
      //TODO here to show search results
      builder: (context, transition) {
        return Container();
      },
    ),
  );
}
