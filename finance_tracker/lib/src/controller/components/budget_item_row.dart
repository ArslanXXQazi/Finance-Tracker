import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class BudgetItemRow extends StatelessWidget {
  final String name;
  final double limit;
  final double spent;

  const BudgetItemRow({
    super.key,
    required this.name,
    required this.limit,
    required this.spent,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    double remaining = limit - spent; // Remaining amount calculation
    double progress = limit > 0 ? spent / limit : 0; // Ensure no division by zero

    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * .015),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 15,
            child: Container(
              height: height * .04,
              width: width * .1,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          SizedBox(width: width * .03),
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
                      onTap: () {},
                      child: Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                SizedBox(height: height * .01),
                Row(
                  children: [
                    CustomText(text: 'Limit: '),
                    CustomText(text: "₹$limit"),
                  ],
                ),
                Row(
                  children: [
                    CustomText(text: 'Spent: '),
                    CustomText(text: "₹$spent", color: Colors.red),
                  ],
                ),
                Row(
                  children: [
                    CustomText(text: 'Remaining: '),
                    CustomText(text: "₹$remaining", color: Colors.green),
                  ],
                ),
                SizedBox(height: height * .003),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    minHeight: height * .01,
                    value: progress.clamp(0.0, 1.0), // Ensures value is between 0 and 1
                    valueColor: AlwaysStoppedAnimation(
                      progress >= 1 ? Colors.red : Colors.green, // Turns red if overspent
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
