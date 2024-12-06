import 'package:flutter/material.dart';
import 'package:school_management/resources/dimensions.dart';
import 'package:school_management/screens/home/presentation/widgets/academics.dart';
import 'package:school_management/screens/home/presentation/widgets/custom_text_field.dart';
import 'package:school_management/screens/home/presentation/widgets/greeting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: deviceWidth * 0.05,vertical: deviceHeight * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Greeting(),
                SizedBox(height: deviceHeight * 0.02,),
                CustomTextField(),
                SizedBox(height: deviceHeight * 0.02,),
                Academics(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
