import 'package:flutter/material.dart';
import 'package:pingo_learn_r1/presentation/pages/home_page.dart';
import 'package:pingo_learn_r1/presentation/pages/login_page.dart';
import 'package:pingo_learn_r1/presentation/pages/signup_page.dart';
import 'package:pingo_learn_r1/presentation/providers/auth_provider.dart';
import 'package:pingo_learn_r1/presentation/providers/product_provider.dart';
import 'package:pingo_learn_r1/presentation/providers/remote_config_provider.dart';
import 'package:provider/provider.dart';

import 'core/core.dart';
import 'core/init_app.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => RemoteConfigProvider()),
        ChangeNotifierProvider<ProductProvider>(create: (_) => sl()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'E-commerce App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: AppColors.primary,
                scaffoldBackgroundColor: AppColors.background,
                fontFamily: 'Poppins',
                appBarTheme: const AppBarTheme(
                  backgroundColor: AppColors.background,
                  elevation: 0,
                  iconTheme: IconThemeData(color: AppColors.primary),
                  titleTextStyle: TextStyle(
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  filled: true,
                  isDense: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                ),
                textTheme: const TextTheme(
                  headlineLarge: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                  bodyLarge: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  bodyMedium: TextStyle(
                    color: AppColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  bodySmall: TextStyle(
                    color: AppColors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(0),
                    minimumSize: WidgetStateProperty.all(Size(0.6.sw, 48)),
                    backgroundColor: WidgetStateProperty.all(AppColors.primary),
                    foregroundColor: WidgetStateProperty.all(AppColors.white),
                    textStyle: WidgetStateProperty.all(
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              routes: {
                '/': (context) => const HomePage(),
                '/login': (context) => LoginPage(),
                '/signup': (context) => SignUpPage(),
              },
              initialRoute: '/login',
            );
          }),
    );
  }
}
