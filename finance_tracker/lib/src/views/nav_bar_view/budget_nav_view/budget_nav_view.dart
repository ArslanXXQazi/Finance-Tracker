import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BudgetNavView extends StatelessWidget {
  const BudgetNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'Budget',fontSize: 22,),
        actions: [
          ImageIcon(AssetImage(Appimages.search),size: width*.09,),
          SizedBox(width: width*.05,),
          ImageIcon(AssetImage(Appimages.scanner),size: width*.075),
          SizedBox(width: width*.04,),
          ImageIcon(AssetImage(Appimages.more),size: width*.09),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Divider(),
          //===========================================>>>>Row For Calender
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
             CustomText(text: 'February, 2025',fontSize: 18,),
              IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
            ],
          ).animate().fadeIn(duration: 2.seconds).slideY(),
          //=============================>>>>Row For Total Budget and Total Spend
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CustomText(text: 'Total Budget'),
                  CustomText(text: '₹1,500.00',color: Colors.green,),
                ],
              ),
              Column(
                children: [
                  CustomText(text: 'Total Spend'),
                  CustomText(text: '₹100.00',color: Colors.red,),
                ],
              ),
            ],
          ),
         Divider(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Padding(
               padding:  EdgeInsets.symmetric(vertical: height*.01),
               child: BoldText(text: 'Budgeted for Feb, 2025'),
             ),
               Divider(),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                 Expanded(
                   flex: 15,
                     child: Column(children: [
                   Container(
                     height: height*.05,
                     width: width*.12,
                     decoration: BoxDecoration(
                       color: Colors.grey.shade100,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.black,width: 2),
                     ),
                     child: Icon(Icons.shopify),
                   )
                 ],)),
                 SizedBox(width: width*.03,),
                 Expanded(
                   flex: 85,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           BoldText(text: "Dining"),
                           Icon(Icons.more_horiz),
                         ],
                       ),
                       SizedBox(height: height*.015,),
                       Row(
                         children: [
                           CustomText(text: 'Limit: '),
                           CustomText(text: '1000.00'),
                         ],
                       ),
                       Row(
                         children: [
                           CustomText(text: 'Spent: '),
                           CustomText(text: '256.00',color: Colors.red,),
                         ],
                       ),
                       Row(
                         children: [
                           CustomText(text: 'Remaining: '),
                           CustomText(text: '244',color: Colors.green,),
                         ],
                       ),
                       SizedBox(height: height*.003,),
                       Container(
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.black),
                         ),
                         child: LinearProgressIndicator(
                           backgroundColor: Colors.white,
                           minHeight: height*.01,
                           value: .3,

                           valueColor: AlwaysStoppedAnimation(Colors.green),
                         ),
                       )
                 ],)),
               ],)

             ],),
          )

        ],),
      ),
    );
  }
}
