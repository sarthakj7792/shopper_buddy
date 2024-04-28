import 'package:flutter/material.dart';
import 'package:shopper_buddy/common/widgets/bottom_bar.dart';
import 'package:shopper_buddy/features/admin/screens/add_product_screen.dart';
import 'package:shopper_buddy/features/auth/screens/auth_screen.dart';
import 'package:shopper_buddy/features/home/screens/category_deals_screen.dart';
import 'package:shopper_buddy/features/home/screens/home_screen.dart';
import 'package:shopper_buddy/features/product_details/screens/product_details_screen.dart';
import 'package:shopper_buddy/features/search/screens/search_screen.dart';
import 'package:shopper_buddy/models/product.dart';

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
    case AddProductScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const AddProductScreen(),
          settings: routeSettings);
    case CategoryDealsScreen.routeName:
      final category = routeSettings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => CategoryDealsScreen(category: category),
          settings: routeSettings);
    case SearchScreen.routeName:
      final searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => SearchScreen(searchQuery: searchQuery),
          settings: routeSettings);
    case ProductDetailScreen.routeName:
      final product = routeSettings.arguments as Product;
      return MaterialPageRoute(
          builder: (context) => ProductDetailScreen(product: product),
          settings: routeSettings);
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
