
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_management/resources/app_colors.dart';
import 'package:school_management/resources/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate()async{
    await Future.delayed(Duration(seconds: 3));
    context.pushReplacementNamed('home');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(child: Image.asset('assets/images/splash.png',height: deviceHeight* .1,)),
          Text('SCHOOL',style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 40
          ),),
          Text('School Management App',style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.textColorLight
          ),),
        ]
      ),
    );
  }
}
