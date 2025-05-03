import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/menu_app_controller.dart';
import 'package:myapp/controllers/product_controller.dart';
import 'lang/translations.dart';
import 'routes.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // fullscreen

  Get.put(MenuAppController());
  Get.put(ProductController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Coffee',
      initialRoute: AppRoutes.welcome, // Use the route constants
      getPages: AppPages.pages, // Use the separated GetPages
      translations: AppTranslations(), // Your translations
      locale: Locale('id', 'ID'), // Default locale
      fallbackLocale: Locale('en', 'US'), // Fallback locale
      defaultTransition: Transition.rightToLeft,
    );
  }
}
