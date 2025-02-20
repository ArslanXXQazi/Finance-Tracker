//
// import 'package:finance_tracker/src/controller/components/custom_calendar.dart';
// import 'package:finance_tracker/src/controller/constant/linker.dart';
//
// class BudgetNavView extends StatefulWidget {
//   const BudgetNavView({super.key});
//
//   @override
//   State<BudgetNavView> createState() => _BudgetNavViewState();
// }
//
// class _BudgetNavViewState extends State<BudgetNavView> {
//   @override
//
//
//   Widget build(BuildContext context) {
//     final height=MediaQuery.sizeOf(context).height;
//     final width=MediaQuery.sizeOf(context).width;
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         title: CustomText(text: 'Budget',fontSize: 22,),
//         actions: [
//           InkWell(
//             onTap: (){},
//               child: ImageIcon(AssetImage(Appimages.search),size: width*.09,)),
//           SizedBox(width: width*.05,),
//           InkWell(
//             onTap: (){},
//               child: ImageIcon(AssetImage(Appimages.scanner),size: width*.075)),
//           SizedBox(width: width*.04,),
//           InkWell(
//             onTap: (){},
//               child: ImageIcon(AssetImage(Appimages.more),size: width*.09)),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           Divider(),
//           //===========================================>>>>Row For Calender
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
//              CustomText(text: 'February, 2025',fontSize: 18,),
//               IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
//             ],
//           ).animate().fadeIn(duration: 2.seconds).slideY(),
//           //=============================>>>>Row For Total Budget and Total Spend
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   CustomText(text: 'Total Budget'),
//                   CustomText(text: '₹1,500.00',color: Colors.green,),
//                 ],
//               ),
//               Column(
//                 children: [
//                   CustomText(text: 'Total Spend'),
//                   CustomText(text: '₹100.00',color: Colors.red,),
//                 ],
//               ),
//             ],
//           ),
//           Divider(),
//           Padding(
//             padding:  EdgeInsets.symmetric(horizontal: width*.03),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Padding(
//                padding:  EdgeInsets.symmetric(vertical: height*.01),
//                child: BoldText(text: 'Budgeted for Feb, 2025'),
//              ),
//                Divider(),
//                //===========================================>>>>Row For Dining
//                BudgetItemRow(
//                   name: "Dining",
//                   limit: 1000.00,
//                   spent: 256,
//                   remaining: 744
//               ),
//                Divider(),
//                //===========================================>>>>Row For Groceries
//                BudgetItemRow(
//                    name: "Groceries",
//                    limit: 500.00,
//                    spent: 256,
//                    remaining: 244
//                ),
//                Divider(),
//                Padding(
//                  padding:  EdgeInsets.symmetric(vertical: height*.01),
//                  child: BoldText(text: 'No Budgeted this month'),
//                ),
//                Divider(),
//                NonBudgetedRow(onTap: (){}, name: "Entertainment"),
//                Divider(),
//                NonBudgetedRow(onTap: (){}, name: "Fuel"),
//                Divider(),
//                NonBudgetedRow(onTap: (){}, name: "Movies"),
//                Divider(),
//                NonBudgetedRow(onTap: (){}, name: "Home"),
//              ],),
//           )
//         ],).animate().fadeIn(duration: 1.seconds).slideY(),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:finance_tracker/src/controller/constant/linker.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class BudgetNavView extends StatefulWidget {
  const BudgetNavView({super.key});

  @override
  State<BudgetNavView> createState() => _BudgetNavViewState();
}

class _BudgetNavViewState extends State<BudgetNavView> {
  DateTime selectedDate = DateTime(2025, 2);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'Budget', fontSize: 22),
        actions: [
          InkWell(
              onTap: () {},
              child: ImageIcon(AssetImage(Appimages.search), size: width * .09)),
          SizedBox(width: width * .05),
          InkWell(
              onTap: () {},
              child: ImageIcon(AssetImage(Appimages.scanner), size: width * .075)),
          SizedBox(width: width * .04),
          InkWell(
              onTap: () {},
              child: ImageIcon(AssetImage(Appimages.more), size: width * .09)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() {
                      selectedDate = DateTime(selectedDate.year, selectedDate.month - 1);
                    });
                  },
                ),
                InkWell(
                  onTap: () async {
                    DateTime? picked = await showMonthPicker(
                      context: context,
                      initialDate: selectedDate,
                    );
                    if (picked != null) {
                      setState(() {
                        selectedDate = picked;
                      });
                    }
                  },
                  child: CustomText(
                    text: '${DateFormat('MMM, yyyy').format(selectedDate)}',
                    fontSize: 18,
                  ),
                ),

                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {
                    setState(() {
                      selectedDate = DateTime(selectedDate.year, selectedDate.month + 1);
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CustomText(text: 'Total Budget'),
                    CustomText(text: '₹1,500.00', color: Colors.green),
                  ],
                ),
                Column(
                  children: [
                    CustomText(text: 'Total Spend'),
                    CustomText(text: '₹100.00', color: Colors.red),
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * .01),
                    child: BoldText(text: 'Budgeted for ${DateFormat('MMM, yyyy').format(selectedDate)}'),
                  ),
                  Divider(),
                  BudgetItemRow(name: "Dining", limit: 1000.00, spent: 256),
                  Divider(),
                  BudgetItemRow(name: "Groceries", limit: 500.00, spent: 500),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * .01),
                    child: BoldText(text: 'No Budgeted this month'),
                  ),
                  Divider(),
                  NonBudgetedRow(onTap: () {}, name: "Entertainment"),
                  Divider(),
                  NonBudgetedRow(onTap: () {}, name: "Fuel"),
                  Divider(),
                  NonBudgetedRow(onTap: () {}, name: "Movies"),
                  Divider(),
                  NonBudgetedRow(onTap: () {}, name: "Home"),
                ],
              ),
            )
          ],
        ).animate().fadeIn(duration: 1.seconds).slideY(),
      ),
    );
  }
}
