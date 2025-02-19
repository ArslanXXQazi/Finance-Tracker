// import 'package:finance_tracker/src/controller/constant/linker.dart';
//
// class TranscationNavView extends StatefulWidget {
//   const TranscationNavView({super.key});
//
//   @override
//   State<TranscationNavView> createState() => _TranscationNavViewState();
// }
//
// class _TranscationNavViewState extends State<TranscationNavView> with SingleTickerProviderStateMixin {
//
//   late TabController tabController;
//   int selectedIndex = 0; // Track selected tab index
//
//   @override
//   void initState() {
//     tabController = TabController(length: 3, vsync: this);
//
//     // Listener to detect tab change
//     tabController.addListener(() {
//       setState(() {
//         selectedIndex = tabController.index;
//       });
//     });
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.sizeOf(context).width;
//     final height = MediaQuery.sizeOf(context).height;
//
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         title: CustomText(text: 'Transcation', fontSize: 22),
//         actions: [
//           InkWell(
//             onTap: () {},
//             child: ImageIcon(AssetImage(Appimages.search), size: width * .09),
//           ),
//           SizedBox(width: width * .05),
//           InkWell(
//             onTap: () {},
//             child: ImageIcon(AssetImage(Appimages.scanner), size: width * .075),
//           ),
//           SizedBox(width: width * .04),
//           InkWell(
//             onTap: () {},
//             child: ImageIcon(AssetImage(Appimages.more), size: width * .09),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Divider(),
//           //==================================>>>Row for Clander
//           Padding(
//             padding:  EdgeInsets.only(left: width*.23),
//             child: Row(
//               children: [
//               Row(children: [
//                 IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
//                 CustomText(text: 'February, 2025',fontSize: 18,),
//                 IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
//               ],),
//                 SizedBox(width: width*.13,),
//                 Icon(Icons.menu),
//               ],
//             ).animate().fadeIn(duration: 2.seconds).slideY(),
//           ),
//           //==================================>>>Row for InComing Expense And Total
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   CustomText(text: 'Incoming'),
//                   CustomText(text: '₹1,500.00', color: Colors.green),
//                 ],
//               ),
//               Column(
//                 children: [
//                   CustomText(text: 'Expanse'),
//                   CustomText(text: '₹100.00', color: Colors.red),
//                 ],
//               ),
//               Column(
//                 children: [
//                   CustomText(text: 'Total'),
//                   CustomText(text: '₹1400.00', color: Colors.green),
//                 ],
//               ),
//             ],
//           ),
//           //==================================>>>TabBar For Buttons
//           SizedBox(height: height*.02,),
//           TabBar(
//             controller: tabController,
//             indicatorColor: Colors.transparent,
//             indicator: BoxDecoration(),
//             labelPadding: EdgeInsets.zero,
//             tabs: [
//               Tab(
//                 child: SizedBox(
//                   width: width * .27,
//                   child: CustomButton(
//                     onTap: () {
//                       setState(() {
//                         selectedIndex=0;
//                       });// Change tab
//                       tabController.animateTo(0);
//                     },
//                     text: 'Settle Up',
//                     backColor: selectedIndex == 0 ? Appcolors.green : Colors.grey.shade100,
//                     borderColor: selectedIndex == 0 ? Appcolors.green : Colors.black,
//                     fontColor: selectedIndex == 0 ? Colors.white : Colors.black,
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: SizedBox(
//                   width: width * .27,
//                   child: CustomButton(
//                     onTap: () {
//
//                       setState(() {
//                         selectedIndex=1;
//                       });
//                       tabController.animateTo(1);
//                     },
//                     text: 'Charts',
//                    backColor: selectedIndex == 1 ? Appcolors.green : Colors.grey.shade100,
//                    borderColor: selectedIndex == 1 ? Appcolors.green : Colors.black,
//                    fontColor: selectedIndex == 1 ? Colors.white : Colors.black,
//
//                   ),
//                 ),
//               ),
//               Tab(
//                 child: SizedBox(
//                   width: width * .27,
//                   child: CustomButton(
//                     onTap: () {
//
//                       setState(() {
//                         selectedIndex=2;
//                       });
//                       tabController.animateTo(2);
//                     },
//                     text: 'Reports',
//                     backColor: selectedIndex == 2 ? Appcolors.green : Colors.grey.shade100,
//                     borderColor: selectedIndex == 2 ? Appcolors.green : Colors.black,
//                     fontColor: selectedIndex == 2 ? Colors.white : Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           //==================================>>>Expended For TapBar View
//           SizedBox(height: height*.02,),
//           Expanded(child: TabBarView(
//               controller: tabController,
//               children: [
//                 SettleUpView(),
//                 ChartsView(),
//                 ReportView()
//               ]))
//         ],
//       ),
//     );
//   }
// }

import 'package:finance_tracker/src/controller/constant/linker.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class TranscationNavView extends StatefulWidget {
  const TranscationNavView({super.key});

  @override
  State<TranscationNavView> createState() => _TranscationNavViewState();
}

class _TranscationNavViewState extends State<TranscationNavView> with SingleTickerProviderStateMixin {

  late TabController tabController;
  int selectedIndex = 0;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'Transcation', fontSize: 22),
        actions: [
          InkWell(
            onTap: () {},
            child: ImageIcon(AssetImage(Appimages.search), size: width * .09),
          ),
          SizedBox(width: width * .05),
          InkWell(
            onTap: () {},
            child: ImageIcon(AssetImage(Appimages.scanner), size: width * .075),
          ),
          SizedBox(width: width * .04),
          InkWell(
            onTap: () {},
            child: ImageIcon(AssetImage(Appimages.more), size: width * .09),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(),
          //======================>>> Custom Calendar Row
          Padding(
            padding: EdgeInsets.only(left: width * .23),
            child: Row(
              children: [
                Row(
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
                SizedBox(width: width * .13),
                Icon(Icons.menu),
              ],
            ).animate().fadeIn(duration: 2.seconds).slideY(),
          ),
          //======================>>> Income, Expense & Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CustomText(text: 'Incoming'),
                  CustomText(text: '₹1,500.00', color: Colors.green),
                ],
              ),
              Column(
                children: [
                  CustomText(text: 'Expense'),
                  CustomText(text: '₹100.00', color: Colors.red),
                ],
              ),
              Column(
                children: [
                  CustomText(text: 'Total'),
                  CustomText(text: '₹1400.00', color: Colors.green),
                ],
              ),
            ],
          ),
          //======================>>> Tab Bar Buttons
          SizedBox(height: height * .02),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            tabs: [
              _buildTab(0, 'Settle Up'),
              _buildTab(1, 'Charts'),
              _buildTab(2, 'Reports'),
            ],
          ),
          SizedBox(height: height * .02),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                SettleUpView(),
                ChartsView(),
                ReportView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(int index, String text) {
    return Tab(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .27,
        child: CustomButton(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            tabController.animateTo(index);
          },
          text: text,
          backColor: selectedIndex == index ? Appcolors.green : Colors.grey.shade100,
          borderColor: selectedIndex == index ? Appcolors.green : Colors.black,
          fontColor: selectedIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
