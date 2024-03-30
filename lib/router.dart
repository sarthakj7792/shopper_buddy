import 'package:flutter/material.dart';
import 'package:shopper_buddy/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const AuthScreen(), settings: routeSettings);
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
