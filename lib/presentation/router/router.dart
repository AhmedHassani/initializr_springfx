// @dart=2.9
import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Screens/cartScreen.dart';
import 'package:giesse_app/presentation/Screens/catalogScreen.dart';
import 'package:giesse_app/presentation/Screens/customersScreen.dart';
import 'package:giesse_app/presentation/Screens/dbSelectionScreen.dart';
import 'package:giesse_app/presentation/Screens/downloadingDataScreen.dart';
import 'package:giesse_app/presentation/Screens/editOrderScreen.dart';
import 'package:giesse_app/presentation/Screens/insertOrderScreen.dart';
import 'package:giesse_app/presentation/Screens/orderHistoryScreen.dart';
import 'package:giesse_app/presentation/Screens/orderViewScreen.dart';
import 'package:giesse_app/presentation/Screens/productsScreen.dart';
import 'package:giesse_app/presentation/Screens/signInScreen.dart';
import 'package:giesse_app/presentation/Screens/supplierDetailsScreen.dart';
import 'package:giesse_app/presentation/Screens/suppliersScreen.dart';
import 'package:giesse_app/presentation/Screens/takingInfoScreen.dart';
import 'package:giesse_app/presentation/Screens/takingScreen.dart';
import 'package:giesse_app/presentation/Screens/userScreen.dart';

// Navigator.of(context).pushReplacementNamed('/DownloadingDataScreen'),
// This file to make routes for screens
class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/SignIn':
        return MaterialPageRoute(
          builder: (_) => SignInScreen(),
        );
      case '/DatabaseSelection':
        return MaterialPageRoute(
          builder: (_) => DatabaseSelection(),
        );
      case '/DownloadingDataScreen':
        return MaterialPageRoute(
          builder: (_) => DownloadingDataScreen(),
        );
      case '/CustomersScreen':
        return MaterialPageRoute(
          builder: (_) => CustomersScreen(),
        );
      case '/InsertOrderScreen':
        return MaterialPageRoute(
          builder: (_) => InsertOrderScreen(),
        );
      case '/ProductsScreen':
        return MaterialPageRoute(
          builder: (_) => ProductsScreen(),
        );
      case '/UserScreen':
        return MaterialPageRoute(
          builder: (_) => UserScreen(),
        );
      case '/TakingScreen':
        return MaterialPageRoute(
          builder: (_) => TakingScreen(),
        );
      case '/TakingInfoScreen':
        return MaterialPageRoute(
          builder: (_) => TakingInfoScreen(),
        );
      case '/CartScreen':
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
      case '/OrderViewScreen':
        return MaterialPageRoute(
          builder: (_) => OrderViewScreen(),
        );
      case '/CatalogScreen':
        return MaterialPageRoute(
          builder: (_) => CatalogScreen(),
        );
      case '/EditOrderScreen':
        return MaterialPageRoute(
          builder: (_) => EditOrderScreen(),
        );
      case '/OrderHistoryScreen':
        return MaterialPageRoute(
          builder: (_) => OrderHistoryScreen(),
        );
      case '/SupplierDetailsScreen':
        return MaterialPageRoute(
          builder: (_) => SupplierDetailsScreen(),
        );
      case '/SuppliersScreen':
        return MaterialPageRoute(
          builder: (_) => SuppliersScreen(),
        );
      default:
        return null;
    }
  }
}
