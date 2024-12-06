import 'package:flutter/material.dart';
import 'package:school_management/resources/app_colors.dart';
import 'package:school_management/resources/dimensions.dart';

List<String> name = ['Students','Teacher','Attendance','Syllabus','TimeTable','Assignments','Exams','Results','Fees','Events','Inbox','Ask Doubts'];
List<String> image = ['student','teacher','attendance','syllabus','time_table','assignments','exam','result','fee','event','inbox','ask_doubt'];

class Academics extends StatelessWidget {
  const Academics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Academics',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                ),),
          ],
        ),
        SizedBox(height: deviceHeight * 0.02,),
        SizedBox(
          height: deviceHeight * 0.7,
          child: GridView.builder(
            itemCount: name.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
              return CustomCard(image: image[index],name: name[index],);
          }),
        )
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final String image;
  const CustomCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: deviceWidth * 0.01,vertical: deviceHeight * 0.007),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/$image.png',height: deviceHeight * 0.05,),
          SizedBox(height: deviceHeight * 0.005,),
          Text(name,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          ),),
        ],
      ),
    );
  }
}

