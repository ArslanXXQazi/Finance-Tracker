
import 'package:finance_tracker/src/controller/constant/linker.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Colors.transparent,
       // backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'NetWorth+',fontSize: 22,color: Colors.green.shade900,fontWeight: FontWeight.bold,),
        actions: [
          InkWell(
            onTap: (){},
              child: ImageIcon(AssetImage(Appimages.scanner),size: width*.075)),
          SizedBox(width: width*.04,),
          InkWell(
            onTap: (){},
              child: ImageIcon(AssetImage(Appimages.more),size: width*.09)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:width*.03),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Divider(),
            //===============================>>>Row For Total NetWorth
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
              //===============================>>>Row For Chart
              SizedBox(height: height*.01,),
            Row(
              children: [
              Expanded(
                flex: 70,
                child:   FinancialChart(),),
              Expanded(
                flex: 30,
                  child:PercentageContainer(percentage: '56%')),
            ],),
              //===============================>>>Container For Availiable Balance
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
                       InkWell(
                         onTap: (){},
                           child: ImageIcon(AssetImage(Appimages.arrow),color: Colors.grey,size: width*.06,)),
                       // IconButton(onPressed: (){}, icon: ImageIcon(AssetImage(Appimages.arrow))),
                      ],),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*.02,horizontal: width*.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        CustomText(text: 'Cash',fontWeight: FontWeight.bold,),
                        CustomText(text: '₹5600.00',color: Colors.green,fontWeight: FontWeight.bold),
                        CustomText(text: 'Bank',fontWeight: FontWeight.bold),
                        CustomText(text: '₹56000.00',color: Colors.green,fontWeight: FontWeight.bold),
                      ],),
                    )
                  ],),
                ),
              ),
            ),
              //===============================>>>Container For UpComings Container
            Card(
              color: Colors.grey.shade100,
              child: Container(
                       //   height: height*.2,
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
                        BoldText(text: "Upcoming Payments",fontSize: 16,),
                        InkWell(
                            onTap: (){},
                            child: ImageIcon(AssetImage(Appimages.arrow),color: Colors.grey,size: width*.06,)),
                      ],),
                  ),
                  Divider(),
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: height*.01,horizontal: width*.02),
                   child: Column(children: [
                    UpComingPaymentRow(
                        date: '28 feb 2025',
                        card: 'Credit Card',
                        amount: '₹1,000',
                      payables_receivable: 'Payables',
                        pay_rece_amount: '₹7.5',


                    ),
                    UpComingPaymentRow(
                        date: '28 feb 2025',
                        card: 'Car Loan EMI',
                        amount: '₹5,000',
                      payables_receivable: 'Receivable',
                        pay_rece_amount: '₹7.5',
                      color: Colors.green,
                    ),
                     Row(
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             CustomText(text: '28 feb 2025',fontWeight: FontWeight.bold,),
                             CustomText(text: 'credit car',color: Colors.grey,fontWeight: FontWeight.bold),
                           ],
                         ),
                         SizedBox(width: width*.12,),
                         BoldText(text: '₹2678.00',color: Colors.red,fontSize: 14,fontWeight: FontWeight.bold),],),
                   ],),
                 )
                ],),
              ),
            ),
              //===============================>>>Container For Last 30 Days
            Padding(
              padding:  EdgeInsets.symmetric(vertical: height*.02),
              child: Card(
                color: Colors.grey.shade100,
                child: Container(
                  width: width*1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400)
                  ),
                 child: Column(
                   children: [
                     Padding(
                       padding:  EdgeInsets.symmetric(vertical: height*.005,horizontal: width*.02),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           BoldText(text: "Last 30 days",fontSize: 16,),
                           InkWell(
                               onTap: (){},
                               child: ImageIcon(AssetImage(Appimages.arrow),color: Colors.grey,size: width*.06,)),
                         ],),
                     ),
                     Divider(),
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: height*.02,horizontal: width*.02),
                       child: Row(
                         children: [
                         Expanded(
                             flex:25,
                             child:  Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                               SizedBox(
                                 height: width*.15,
                                 width: width*.15,
                                 child: CircularProgressIndicator(
                                   value:.7,
                                   valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
                                   backgroundColor: Colors.lightBlueAccent.shade100,
                                   strokeWidth: width*.05,

                                 ).animate().flipH(duration: 7.seconds),
                               )
                             ],)),
                         SizedBox(width: width*.02,),
                         Expanded(
                           flex: 75,
                             child: Column(children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                 CustomText(text: 'Incoming',fontWeight: FontWeight.bold,),
                                 CustomText(text: '₹1500.00',color: Colors.green,fontWeight: FontWeight.bold,),
                               ],),
                               SizedBox(height: height*.01,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   CustomText(text: 'Expanse',fontWeight: FontWeight.bold,),
                                   CustomText(text: '₹100.00',color: Colors.red,fontWeight: FontWeight.bold,),
                                 ],),
                               Divider(),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   CustomText(text: 'Savings',fontWeight: FontWeight.bold,),
                                   CustomText(text: '₹1400.00',color: Colors.green,fontWeight: FontWeight.bold,),
                                 ],),
                         ],))
                       ],),
                     ),
                   ],
                 ),
                ),
              ),
            ),
              //===============================>>>Button For Add
              Padding(
                padding:  EdgeInsets.only(bottom:height*.05),
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(width*.4, height*.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    child: CustomText(text: 'ADD',fontWeight: FontWeight.bold,color: Colors.white,)),
              )

          ],).animate().fadeIn(duration: 1.seconds).slideY(),
        ),
      ),
    );
  }
}