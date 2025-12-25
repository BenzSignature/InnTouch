import 'package:get/get.dart';
import 'package:inn_touch/src/bindings/export_bindings.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/views/export_views.dart';

class PagesRoutes {
  static final routes = [
    GetPage(
      name: PathRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: PathRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: PathRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PathRoutes.register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: PathRoutes.setting,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: PathRoutes.bottomNavBar,
      page: () => BottomNavBar(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
      name: PathRoutes.service,
      page: () => ServiceView(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: PathRoutes.myStays,
      page: () => MyStaysView(),
      binding: MyStaysBinding(),
    ),
    GetPage(
      name: PathRoutes.changeLanguage,
      page: () => ChangeLanguageView(),
      binding: ChangeLanguageBinding(),
    ),
  ];
}
