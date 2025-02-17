import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BoldText(text: 'Budget',fontSize: 22,),
        actions: [
          ImageIcon(AssetImage(Appimages.search),size: width*.09,),
          SizedBox(width: width*.05,),
          ImageIcon(AssetImage(Appimages.scanner),size: width*.075),
          SizedBox(width: width*.04,),
          ImageIcon(AssetImage(Appimages.more),size: width*.09),
        ],
      ),
      body: Column(children: [
        Container(
          height: height*.001,
          width: width*1,
          color: Colors.grey.shade400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
           CustomText(text: 'February, 2025',fontSize: 18,),
            IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
          ],
        ),
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
        Container(
          height: height*.001,
          width: width*1,
          color: Colors.grey.shade400,
        ),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         BoldText(text: 'Budgeted for Feb, 2025'),
       ],)

      ],),
    );
  }
}
