

import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class UpComingPaymentRow extends StatelessWidget {
  String date;
  String card;
  String payables_receivable;
  String pay_rece_amount;
  String amount;
  Color  color;
   UpComingPaymentRow({super.key,
     required this.date,
     required this.card,
     required this.amount,
     required this.payables_receivable,
     required this.pay_rece_amount,
     this.color=Colors.red

   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.006),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "$date",fontWeight: FontWeight.bold),
              CustomText(text: "$card",color: Colors.grey,fontWeight: FontWeight.bold),
            ],
          ),
          BoldText(text: "$amount",color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),
          CustomText(text: '$payables_receivable',fontWeight: FontWeight.bold,),
          BoldText(text: pay_rece_amount,color: color,fontSize: 14,fontWeight: FontWeight.bold),

        ],),
    );
  }
}
