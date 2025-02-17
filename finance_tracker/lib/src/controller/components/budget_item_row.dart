import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class BudgetItemRow extends StatelessWidget {

  String name;
  String limit;
  String spent;
  String remaining;

   BudgetItemRow({super.key,
     required this.name,
     required this.limit,
     required this.spent,
     required this.remaining,
   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Row(
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
                    BoldText(text: name),
                   IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
                  ],
                ),
                SizedBox(height: height*.015,),
                Row(
                  children: [
                    CustomText(text: 'Limit: '),
                    CustomText(text: limit),
                  ],
                ),
                Row(
                  children: [
                    CustomText(text: 'Spent: '),
                    CustomText(text: spent,color: Colors.red,),
                  ],
                ),
                Row(
                  children: [
                    CustomText(text: 'Remaining: '),
                    CustomText(text: remaining,color: Colors.green,),
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
      ],);
  }
}
