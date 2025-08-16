import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sidebarsample/xcore.dart';

class AppStartup extends StatelessWidget {
  const AppStartup({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Locale current = const Locale('km_KH', 'KH'); // Make default language
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.transparent,
            systemNavigationBarContrastEnforced: false,
            systemNavigationBarIconBrightness: Brightness.dark),
        child: GetMaterialApp(
          locale: current,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(boldText: false, textScaler: TextScaler.linear(1.0)),
              child: child!,
            );
          },
          fallbackLocale: current,
          theme: ThemeData(
            useMaterial3: false,
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(color: Colors.black45),
                labelStyle: TextStyle(color: Colors.black45)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    overlayColor: WidgetStateProperty.all(
                        Colors.white.withAlpha(51)))),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle(
                    overlayColor: WidgetStateProperty.all(
                        Colors.black45.withAlpha(51)))),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.black45,
              toolbarHeight: 50,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                // Status bar color
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.light,
                statusBarBrightness: Brightness.dark,
              ),
            ),
            primaryColor: Colors.blueAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontWeight: FontWeight.w900,
              ),
              bodyLarge: TextStyle(
                fontWeight: FontWeight.w300,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.w300,
              ),
              titleMedium: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            tabBarTheme: const TabBarThemeData(
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          opaqueRoute: Get.isOpaqueRouteDefault,
          popGesture: Get.isPopGestureEnable,
          transitionDuration: const Duration(milliseconds: 230),
          initialRoute: AppPages.init,
          getPages: AppPages.routes,
        ));
  }
}