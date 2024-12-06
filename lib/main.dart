import 'package:flutter/material.dart';
import 'package:school_management/resources/app_colors.dart';
import 'package:school_management/resources/dimensions.dart';
import 'package:school_management/resources/routes.dart';
import 'package:school_management/screens/splash_screen/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackground
      ),
      routerConfig: route,
    );
  }
}


