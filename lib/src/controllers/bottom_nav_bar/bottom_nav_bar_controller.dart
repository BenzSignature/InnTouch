import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_icons.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/routes/export_routes.dart';

class BottomNavBarController extends GetxController {
  late PersistentTabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = PersistentTabController(initialIndex: 0);
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: FaIcon(AppIcons.home, size: 24),
        title: ("Home"),
        activeColorPrimary: AppColors.accentGold,
        inactiveColorPrimary: AppColors.textSecondary,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: PathRoutes.home,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(AppIcons.myStays),
        title: ("My Stay"),
        activeColorPrimary: AppColors.accentGold,
        inactiveColorPrimary: AppColors.textSecondary,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: PathRoutes.myStays,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(AppIcons.service, size: 28),
        title: ("Service"),
        activeColorPrimary: AppColors.accentGold,
        inactiveColorPrimary: AppColors.textSecondary,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: PathRoutes.service,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(AppIcons.setting),
        title: ("Settings"),
        activeColorPrimary: AppColors.accentGold,
        inactiveColorPrimary: AppColors.textSecondary,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: PathRoutes.setting,
        ),
      ),
    ];
  }

  void changeTab(int index) {
    tabController.jumpToTab(index);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
