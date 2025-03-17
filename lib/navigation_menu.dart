import 'package:e_store/features/personalization/screens/settings/settings.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/features/shop/screens/wishlists/wishlist.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
                backgroundColor: darkMode? TColors.black:Colors.white,
                indicatorColor: darkMode? TColors.white:TColors.black,
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.store_mall_directory_outlined),
                  label: 'Store'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'WishList'),
              NavigationDestination(
                  icon: Icon(Icons.person_2_outlined), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),


    Container(
      color: Colors.purple,
    ),


    const FavouriteScreen(),


    const SettingsScreen()
  ];
}
