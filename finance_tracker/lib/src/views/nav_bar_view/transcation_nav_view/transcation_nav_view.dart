import 'package:finance_tracker/src/controller/components/custom_button.dart';
import 'package:finance_tracker/src/controller/constant/linker.dart';

class TranscationNavView extends StatefulWidget {
  const TranscationNavView({super.key});

  @override
  State<TranscationNavView> createState() => _TranscationNavViewState();
}

class _TranscationNavViewState extends State<TranscationNavView> with SingleTickerProviderStateMixin {
  @override

  late TabController tabController;
  int select=0;

  @override
  void initState() {
    // TODO: implement initState
    tabController =TabController(length: 3, vsync: this);
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
        // backgroundColor: Colors.grey.shade100,
        title: CustomText(text: 'Transcation',fontSize: 22),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CustomText(text: 'Incoming'),
                CustomText(text: '₹1,500.00',color: Colors.green,),
              ],
            ),
            Column(
              children: [
                CustomText(text: 'Expanse'),
                CustomText(text: '₹100.00',color: Colors.red,),
              ],
            ),
            Column(
              children: [
                CustomText(text: 'Total'),
                CustomText(text: '₹1400.00',color: Colors.green,),
              ],
            ),
          ],
        ),

        Container(
          child: TabBar(

            controller: tabController,
              indicatorColor: Colors.transparent,
             // isScrollable: true,
              tabs: [
       Tab(child: SizedBox(
         width: width*.27,
         child: CustomButton(
           onTap: (){
             select=1;
             setState(() {});
           },
           text: 'Settle Up',
         ),
       )),
       Tab(child: SizedBox(
         width: width*.27,
         child: CustomButton(
           onTap: (){
             select=2;
             setState(() {});
           },
           text: 'Settle Up',
         ),
       )),
       Tab(child: SizedBox(
         width: width*.27,
         child: CustomButton(
           onTap: (){
             select=3;
             setState(() {});
           },
           text: 'Settle Up',
         ),
       )),
          ]),
        )


      ],),
    );
  }
}
