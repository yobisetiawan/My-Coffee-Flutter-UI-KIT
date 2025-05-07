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
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'My Coffee',
      initialRoute: AppRoutes.welcome,
      getPages: AppPages.pages,
      translations: AppTranslations(),
      locale: Locale('id', 'ID'),
      fallbackLocale: Locale('en', 'US'),
      defaultTransition: Transition.rightToLeft,
    );
  }
}
