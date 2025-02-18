import 'package:finance_tracker/src/controller/components/chart.dart';
import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:finance_tracker/src/controller/components/percentage_container.dart';
import 'package:finance_tracker/src/controller/components/up_coming_payment_row.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';
import 'package:fl_chart/fl_chart.dart';
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
          ],),
          Row(
            children: [
            Expanded(
              flex: 70,
              child:   FinancialChart(),),
            Expanded(
              flex: 30,
                child:PercentageContainer(percentage: '56%')),
          ],),

          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*.02),
            child: Card(
              color: Colors.grey.shade100,
              child: Container(
                width: width*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Column(children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*.005,horizontal: width*.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      BoldText(text: "Available Balance",fontSize: 16,),
                     Icon(Icons.arrow_forward),
                    ],),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height*.02,horizontal: width*.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: 'Cash'),
                      CustomText(text: '₹5600.00',color: Colors.green,),
                      CustomText(text: 'Bank'),
                      CustomText(text: '₹56000.00',color: Colors.green,),
                    ],),
                  )
                ],),
              ),
            ),
          ),


          Card(
            color: Colors.grey.shade100,
            child: Container(
                     //   height: height*.2,
              width: width*1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(children: [
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.005,horizontal: width*.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoldText(text: "Upcoming Payments",fontSize: 16,),
                      Icon(Icons.arrow_forward),
                    ],),
                ),
                Divider(),
               Padding(
                 padding:  EdgeInsets.symmetric(vertical: height*.01,horizontal: width*.02),
                 child: Column(children: [
                  UpComingPaymentRow(
                      date: '28 feb 2025',
                      card: 'Credit Card',
                      amount: '1,000',
                    payables_receivable: 'Payables',
                      pay_rece_amount: '7.5',


                  ),
                  UpComingPaymentRow(
                      date: '28 feb 2025',
                      card: 'Car Loan EMI',
                      amount: '5,000',
                    payables_receivable: 'Receivable',
                      pay_rece_amount: '7.5',
                    color: Colors.green,
                  ),
                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           CustomText(text: '28 feb 2025'),
                           CustomText(text: 'credit car',color: Colors.grey,),
                         ],
                       ),
                       SizedBox(width: width*.13,),
                       BoldText(text: '2678.00',color: Colors.red,fontSize: 14,),],),
                 ],),
               )
              ],),
            ),
          )
        ],),
      ),
    );
  }
}