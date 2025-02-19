import 'package:flutter/material.dart';
import 'package:finance_tracker/src/controller/components/custom_button.dart';
import 'package:finance_tracker/src/controller/constant/linker.dart';

class TranscationNavView extends StatefulWidget {
  const TranscationNavView({super.key});

  @override
  State<TranscationNavView> createState() => _TranscationNavViewState();
}

class _TranscationNavViewState extends State<TranscationNavView> with SingleTickerProviderStateMixin {

  late TabController tabController;
  int selectedIndex = 0; // Track selected tab index

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);

    // Listener to detect tab change
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

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
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
                  CustomText(text: 'Expanse'),
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
          Container(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent, // Hide default indicator
              tabs: [
                Tab(
                  child: SizedBox(
                    width: width * .27,
                    child: CustomButton(
                      onTap: () {
                        tabController.animateTo(0);
                        setState(() {
                          selectedIndex=0;
                        });// Change tab
                      },
                      text: 'Settle Up',
                      backColor: selectedIndex == 0 ? Colors.blue : Colors.grey, // Change color on selection
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: width * .27,
                    child: CustomButton(
                      onTap: () {
                        tabController.animateTo(1);
                        setState(() {
                          selectedIndex=1;
                        });
                      },
                      text: 'Charts',
                     backColor: selectedIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: width * .27,
                    child: CustomButton(
                      onTap: () {
                        tabController.animateTo(2);
                        setState(() {
                          selectedIndex=2;
                        });
                      },
                      text: 'Reports',
                      backColor: selectedIndex == 2 ? Colors.blue : Colors.grey,
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
