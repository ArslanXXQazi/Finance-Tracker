

import 'package:finance_tracker/src/controller/constant/linker.dart';
import 'package:finance_tracker/src/views/nav_bar_view/portfolio_nav_view/assets_tapbar.dart';
import 'package:finance_tracker/src/views/nav_bar_view/portfolio_nav_view/liabilities_tapbar.dart';

class PortfolioNavView extends StatefulWidget {
  const PortfolioNavView({super.key});

  @override
  State<PortfolioNavView> createState() => _PortfolioNavViewState();
}

class _PortfolioNavViewState extends State<PortfolioNavView> with SingleTickerProviderStateMixin  {
  @override

  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController =TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'Portfolio',fontSize: 22,),
        actions: [
          InkWell(
              onTap: (){},
              child: ImageIcon(AssetImage(Appimages.search),size: width*.09,)),
          SizedBox(width: width*.05,),
          InkWell(
              onTap: (){},
              child: ImageIcon(AssetImage(Appimages.scanner),size: width*.075)),
          SizedBox(width: width*.04,),
          InkWell(
              onTap: (){},
              child: ImageIcon(AssetImage(Appimages.more),size: width*.09)),
        ],
      ),
      body: Column(children: [
        Center(
          child: Card(
            color: Colors.grey.shade100,
            child: Container(
              height: height*.4,
              width: width*.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.02),
                  child: Column(
                    children: [
                    BoldText(text: 'Overview',),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      CustomText(text: 'Financial health: ',fontWeight: FontWeight.bold,),
                      CustomText(text: 'Good',color: Colors.green.shade800,fontWeight: FontWeight.bold,),
                    ],),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*.015),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Row(children: [
                          CustomText(text: '1M:'),
                          ImageIcon(AssetImage(Appimages.up),size: width*.03,color: Colors.green,),
                          CustomText(text: '1.6M%'),
                        ],),
                        Row(children: [
                          CustomText(text: '6M:'),
                          ImageIcon(AssetImage(Appimages.up),size: width*.03,color: Colors.green,),
                          CustomText(text: '2.5%'),
                        ],),
                        Row(children: [
                          CustomText(text: '1Y:'),
                          ImageIcon(AssetImage(Appimages.down),size: width*.03,color: Colors.red,),
                          CustomText(text: '3.6M%'),
                        ],)
                      ],),
                    ),
                    BoldText(text: '₹10,00,000.00',fontSize: 22,),
                    Divider(),
                    Container(
                      width: width*1,
                      child: Row(children: [
                        Expanded(
                          flex:50,
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Container(
                              height: height*.015,
                              width: width*.03,
                              color: Colors.lightBlueAccent.shade100,
                            ),
                            SizedBox(width: width*.02,),
                            CustomText(text: 'Assets',fontSize: 12,),
                              SizedBox(width: width*.02,),
                            Container(
                              height: height*.015,
                              width: width*.03,
                              color: Colors.lightBlueAccent,
                            ),
                            SizedBox(width: width*.02,),
                            CustomText(text: 'Liabilities',fontSize: 12,),
                          ],),
                          Padding(
                            padding:  EdgeInsets.only(top: height*.03),
                            child: SizedBox(
                              height: width*.25,
                              width: width*.25,
                              child: CircularProgressIndicator(
                                value:.7,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
                                backgroundColor: Colors.lightBlueAccent.shade100,
                                strokeWidth: width*.09,
                              ).animate().flipH(duration: 5.seconds),
                            ),
                          )
                        ],)),
                        SizedBox(width: width*.07,),
                        Expanded(
                          flex: 50,
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          BoldText(text: 'Top Assets',fontSize: 16,),
                          SizedBox(height: height*.01,),
                          Row(children: [
                            Icon(Icons.circle,size: width*.02,),
                            SizedBox(width: width*.02,),
                            CustomText(text: "Home"),
                          ],),
                            Row(children: [
                              Icon(Icons.circle,size: width*.02,),
                              SizedBox(width: width*.02,),
                              CustomText(text: "Home"),
                            ],),
                            SizedBox(height: height*.01,),
                            BoldText(text: 'Top Liabilities',fontSize: 16,),
                            Row(children: [
                              Icon(Icons.circle,size: width*.02,),
                              SizedBox(width: width*.02,),
                              CustomText(text: "Home"),
                            ],),
                            Row(children: [
                              Icon(Icons.circle,size: width*.02,),
                              SizedBox(width: width*.02,),
                              CustomText(text: "Home"),
                            ],)
                        ],))
                      ],),

                    )
                  ],),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: height*.05,
          child: TabBar(
            controller: tabController,
           indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
              tabs:
              [
                BoldText(text: 'Assets',fontSize: 16,),
                BoldText(text: 'Liabilities',fontSize: 16,),

              ]
          ),
        ),
        Expanded(child: TabBarView(
          controller: tabController,
            children: [
          AssetsTapbar(),
          LiabilitiesTapbar(),
        ])),
      ],)
    );
  }
}
// import 'package:finance_tracker/src/controller/constant/linker.dart';
// import 'package:flutter/material.dart';
//
// class PortfolioNavView extends StatefulWidget {
//   const PortfolioNavView({super.key});
//
//   @override
//   _PortfolioNavViewState createState() => _PortfolioNavViewState();
// }
//
// class _PortfolioNavViewState extends State<PortfolioNavView> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
//
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         title: CustomText(text: 'Portfolio', fontSize: 22),
//         actions: [
//           InkWell(
//               onTap: () {},
//               child: ImageIcon(AssetImage(Appimages.search), size: width * .09)),
//           SizedBox(width: width * .05),
//           InkWell(
//               onTap: () {},
//               child: ImageIcon(AssetImage(Appimages.scanner), size: width * .075)),
//           SizedBox(width: width * .04),
//           InkWell(
//               onTap: () {},
//               child: ImageIcon(AssetImage(Appimages.more), size: width * .09)),
//         ],
//       ),
//       body: Column(
//         children: [
//           // Overview Card
//           Center(
//             child: Card(
//               color: Colors.grey.shade100,
//               child: Container(
//                 height: height * .4,
//                 width: width * .9,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.grey),
//                 ),
//                 child: Center(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: width * .04, vertical: height * .02),
//                     child: Column(
//                       children: [
//                         BoldText(text: 'Overview'),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomText(text: 'Financial health: ', fontWeight: FontWeight.bold),
//                             CustomText(text: 'Good', color: Colors.green.shade800, fontWeight: FontWeight.bold),
//                           ],
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: height * .015),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Row(children: [
//                                 CustomText(text: '1M:'),
//                                 ImageIcon(AssetImage(Appimages.up), size: width * .03, color: Colors.green),
//                                 CustomText(text: '4.16%'),
//                               ]),
//                               Row(children: [
//                                 CustomText(text: '6M:'),
//                                 ImageIcon(AssetImage(Appimages.up), size: width * .03, color: Colors.green),
//                                 CustomText(text: '42.5%'),
//                               ]),
//                               Row(children: [
//                                 CustomText(text: '1Y:'),
//                                 ImageIcon(AssetImage(Appimages.down), size: width * .03, color: Colors.red),
//                                 CustomText(text: '73.6%'),
//                               ])
//                             ],
//                           ),
//                         ),
//                         BoldText(text: '₹10,00,000.00', fontSize: 22),
//                         Divider(),
//                         Container(
//                           width: width * 1,
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 flex: 50,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           height: height * .015,
//                                           width: width * .03,
//                                           color: Colors.lightBlueAccent.shade100,
//                                         ),
//                                         SizedBox(width: width * .02),
//                                         CustomText(text: 'Assets', fontSize: 12),
//                                         SizedBox(width: width * .02),
//                                         Container(
//                                           height: height * .015,
//                                           width: width * .03,
//                                           color: Colors.lightBlueAccent,
//                                         ),
//                                         SizedBox(width: width * .02),
//                                         CustomText(text: 'Liabilities', fontSize: 12),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.only(top: height * .03),
//                                       child: SizedBox(
//                                         height: width * .25,
//                                         width: width * .25,
//                                         child: CircularProgressIndicator(
//                                           value: .7,
//                                           valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
//                                           backgroundColor: Colors.lightBlueAccent.shade100,
//                                           strokeWidth: width * .09,
//                                         ).animate().flipH(duration: 5.seconds),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               VerticalDivider(
//                                 color: Colors.grey,
//                                 thickness: 1,
//                                 indent: 20,
//                                 endIndent: 20,
//                               ),
//                               Expanded(
//                                 flex: 50,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     BoldText(text: 'Top Assets', fontSize: 16),
//                                     SizedBox(height: height * .01),
//                                     Row(children: [
//                                       Icon(Icons.circle, size: width * .02),
//                                       SizedBox(width: width * .02),
//                                       CustomText(text: "Home"),
//                                     ]),
//                                     Row(children: [
//                                       Icon(Icons.circle, size: width * .02),
//                                       SizedBox(width: width * .02),
//                                       CustomText(text: "Car"),
//                                     ]),
//                                     SizedBox(height: height * .01),
//                                     BoldText(text: 'Top Liabilities', fontSize: 16),
//                                     Row(children: [
//                                       Icon(Icons.circle, size: width * .02),
//                                       SizedBox(width: width * .02),
//                                       CustomText(text: "Home Loan"),
//                                     ]),
//                                     Row(children: [
//                                       Icon(Icons.circle, size: width * .02),
//                                       SizedBox(width: width * .02),
//                                       CustomText(text: "Car Loan"),
//                                     ])
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // **NEW: Tab Bar for Assets & Liabilities**
//           TabBar(
//             controller: _tabController,
//             labelColor: Colors.black,
//             unselectedLabelColor: Colors.grey,
//             indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.grey[300],
//             ),
//             tabs: [
//               Tab(text: "Assets"),
//               Tab(text: "Liabilities"),
//             ],
//           ),
//           // Tab Bar View (To Show Assets & Liabilities List)
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 // **Assets List**
//                 ListView(
//                   padding: EdgeInsets.all(16),
//                   children: [
//                     AssetTile(title: "House", value: "₹10,00,000.00"),
//                     AssetTile(title: "Stocks", value: "₹25,000.00"),
//                     AssetTile(title: "Car", value: "₹5,00,000.00"),
//                     AssetTile(title: "Cash & Bank", value: "₹1,00,000.00"),
//                   ],
//                 ),
//
//                 // **Liabilities List**
//                 ListView(
//                   padding: EdgeInsets.all(16),
//                   children: [
//                     AssetTile(title: "Home Loan", value: "₹7,00,000.00"),
//                     AssetTile(title: "Car Loan", value: "₹3,00,000.00"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // **Reusable Widget for Assets & Liabilities**
// class AssetTile extends StatelessWidget {
//   final String title;
//   final String value;
//
//   AssetTile({required this.title, required this.value});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         leading: Icon(Icons.shopping_cart),
//         title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
//         trailing: Text(value, style: TextStyle(color: Colors.green)),
//       ),
//     );
//   }
// }
//
// // **CustomText Widget**
// class CustomText extends StatelessWidget {
//   final String text;
//   final Color color;
//   final double fontSize;
//   final FontWeight fontWeight;
//
//   CustomText({
//     super.key,
//     required this.text,
//     this.color = Colors.black,
//     this.fontWeight = FontWeight.normal,
//     this.fontSize = 14,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         color: color,
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//       ),
//     );
//   }
// }