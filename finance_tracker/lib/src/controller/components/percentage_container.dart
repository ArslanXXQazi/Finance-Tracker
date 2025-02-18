import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class PercentageContainer extends StatelessWidget {
  String percentage;
   PercentageContainer({super.key,required this.percentage});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Container(
          height: height*.14,
          width: width*1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.lightGreenAccent,
                  Colors.green.shade300,
                ]
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Container(
              height: height*.12,
              width: width*.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade700
              ),
              child: Center(child: CustomText(text: percentage,color: Colors.white,fontSize: 30,),),
            ),
          ),
        )
      ],);
  }
}
