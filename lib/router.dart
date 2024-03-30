import 'package:flutter/material.dart';
import 'package:shopper_buddy/common/widgets/bottom_bar.dart';
import 'package:shopper_buddy/features/auth/screens/auth_screen.dart';
import 'package:shopper_buddy/features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const AuthScreen(), settings: routeSettings);

    case HomeScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const HomeScreen(), settings: routeSettings);
    case BottomBar.routeName:
      return MaterialPageRoute(
          builder: (context) => const BottomBar(), settings: routeSettings);
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text("Page Not Found!"),
                ),
              ),
          settings: routeSettings);
  }
}
