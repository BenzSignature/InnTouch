import 'package:get/get.dart';
import 'package:inn_touch/src/config/app_message.dart';
import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/controllers/export_contollres.dart';
import 'package:inn_touch/src/core/utils/prefs.dart';
import 'package:inn_touch/src/models/export_models.dart';
import 'package:inn_touch/src/routes/export_routes.dart';
import 'package:inn_touch/src/services/locate/locate_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController(), permanent: true);

  /* flutter shared preferences */
  await prefs.init();

  /* get locale */
  Locale? locale = LocateService.getLocale(prefs.language);
  LanguageModel languageModel = await LocateService.loadConfig();
  runApp(MyApp(locale: locale, languageModel: languageModel));
}

class MyApp extends StatefulWidget {
  final LanguageModel languageModel;
  final Locale? locale;
  const MyApp({super.key, required this.languageModel, this.locale});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppMessages(languageModel: widget.languageModel),
      locale: widget.locale ?? LocateService.thaiLocate,
      fallbackLocale: LocateService.thaiLocate,
      debugShowCheckedModeBanner: false,
      title: 'Inn Touch',
      initialRoute: PathRoutes.splash,
      getPages: PagesRoutes.routes,
    );
  }
}
