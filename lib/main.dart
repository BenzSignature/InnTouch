import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inn_touch/src/bindings/export_bindings.dart';
import 'package:inn_touch/src/routes/export_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Task Manager',
      initialBinding: HomeBinding(),
      initialRoute: PathRoutes.home,
      // getPages: PagesRoutes.routes,
    );
  }
}
