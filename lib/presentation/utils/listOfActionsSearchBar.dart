import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giesse_app/gen/assets.gen.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

List<Widget> actionsCustomersScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> actionsProductScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.increment.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> actionsTakingScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sortReport.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> orderHistoryScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.increment.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> catalogScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> suppliersScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
List<Widget> agentsScreen = [
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.filter.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.sort.path,
        width: 20,
        height: 20,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction(
    showIfOpened: false,
    child: CircularButton(
      icon: SvgPicture.asset(
        Assets.icons.sharedIcons.user.path,
        width: 30,
        height: 30,
      ),
      onPressed: () {},
    ),
  ),
  FloatingSearchBarAction.searchToClear(
    showIfClosed: false,
  ),
];
