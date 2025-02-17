import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';
import 'package:flutter/material.dart';

class BudgetItemRow extends StatelessWidget {

  String name;
  double limit;
  double spent;
  double remaining;

   BudgetItemRow({super.key,
     required this.name,
     
   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 15,
              child: Column(children: [
                Container(
                  height: height*.04,
                  width: width*.1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                 // child: ImageIcon(AssetImage(Appimages.cart))
                  child: Icon(Icons.shopping_cart_outlined),
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
                      BoldText(text: name),
                     InkWell(
                       onTap: (){},
                         child: Icon(Icons.more_horiz)),
                    ],
                  ),
                  SizedBox(height: height*.01,),
                  Row(
                    children: [
                      CustomText(text: 'Limit: '),
                      CustomText(text: "$limit"),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(text: 'Spent: '),
                      CustomText(text: "$spent",color: Colors.red,),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(text: 'Remaining: '),
                      CustomText(text: "$remaining",color: Colors.green,),
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
        ],),
    );
  }
}
