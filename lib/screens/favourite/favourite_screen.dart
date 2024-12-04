import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_ecommerce/components/custom_navigation_bar.dart';
import 'package:ui_ecommerce/enums.dart';
import 'package:ui_ecommerce/screens/favourite/components/body.dart';
import 'package:ui_ecommerce/state_managements/favourite_provider.dart';


class FavouriteScreen extends StatelessWidget {
  static String routeName = "/favourite";
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
      bottomNavigationBar: const CustomNavigationBar(menu: MenuState.favorite),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          const Text(
            "Favourite Items",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Consumer<FavouriteProvider>(
            builder: (context, favourite, child) => Text(
              "${favourite.favouriteProducts.length} items",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

