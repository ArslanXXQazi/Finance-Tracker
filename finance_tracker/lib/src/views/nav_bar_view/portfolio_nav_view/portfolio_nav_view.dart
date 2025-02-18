import 'package:finance_tracker/src/controller/components/bouncing_text.dart';
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
                    BouncingText('Overview',fontSize: 20,),
                   // BoldText(text: 'Overview',),
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
                              height: height*.011,
                              width: width*.02,
                              color: Colors.cyanAccent,
                            ),
                            SizedBox(width: width*.02,),
                            CustomText(text: 'Assets',fontSize: 12,),
                              SizedBox(width: width*.02,),
                            Container(
                              height: height*.011,
                              width: width*.02,
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
                                backgroundColor: Colors.cyanAccent,
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
              color: Colors.grey.shade300,
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
      ],).animate().fadeIn(duration: 1.seconds).slideY(),
    );
  }
}
