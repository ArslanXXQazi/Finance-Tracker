import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class NonBudgetedRow extends StatelessWidget {
  String name;
  VoidCallback onTap;
   NonBudgetedRow({super.key,required this.onTap,required this.name});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
            height: height*.04,
            width: width*.1,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,width: 2),
            ),
            child: Icon(Icons.shopping_cart_outlined),
          ),
          SizedBox(width: width*.03,),
          CustomText(text: name),
        ],),
        OutlinedButton(
            onPressed: onTap,
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
            child: CustomText(text: 'SET BUDGET',fontWeight: FontWeight.bold,))
      ],);
  }
}
