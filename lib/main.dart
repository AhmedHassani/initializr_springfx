import 'package:flutter/material.dart';
import 'package:giesse_app/presentation/Screens/customersScreen.dart';
import 'package:giesse_app/presentation/Screens/insertOrderScreen.dart';
import 'package:giesse_app/presentation/Screens/productsScreen.dart';
import 'package:giesse_app/presentation/Screens/splashScreen.dart';
import 'package:giesse_app/presentation/Screens/userScreen.dart';
import 'package:giesse_app/presentation/router/router.dart';
import 'package:giesse_app/presentation/utils/responsiveUI.dart';
import 'package:giesse_app/presentation/Screens/signInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              onGenerateRoute: _appRouter.onGenerateRoute,
              title: 'Giesse App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
