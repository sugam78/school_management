import 'package:flutter/material.dart';
import 'package:school_management/resources/app_colors.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Hello',style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.textColorLight
            ),),
            Text('Michael Smith',style: Theme.of(context).textTheme.titleLarge!.copyWith(
            ),),
          ],
        ),
        Icon(Icons.notifications_outlined),
      ],
    );
  }
}
