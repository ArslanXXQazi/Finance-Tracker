import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';
import 'package:flutter/material.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'NetWorth+',fontSize: 22,color: Colors.green.shade900,fontWeight: FontWeight.bold,),
        actions: [
          ImageIcon(AssetImage(Appimages.scanner),size: width*.075),
          SizedBox(width: width*.04,),
          ImageIcon(AssetImage(Appimages.more),size: width*.09),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:width*.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Divider(),
          Row(
            children: [
            Expanded(
               flex: 85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              BoldText(text: 'Total net worth :',fontSize: 22,),
              BoldText(text: '₹10,00,000.00',fontSize: 22,),
            ],)),
            Expanded(
              flex: 15,
                child: Column(children: [
                CircleAvatar(
                  backgroundColor: Colors.green.shade800,
                  radius: width*.04,
                  child: Icon(Icons.settings,color: Colors.white,),
                )
            ],)),
          ],)
        ],),
      ),
    );
  }
}
