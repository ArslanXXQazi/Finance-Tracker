

import 'package:finance_tracker/src/controller/constant/linker.dart';

class PortfolioNavView extends StatelessWidget {
  const PortfolioNavView({super.key});

  @override
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
          child: Container(
            height: height*.4,
            width: width*.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Column(
                children: [
                BoldText(text: 'Overview',),
                Row(children: [
                  CustomText(text: 'Financial health: ')
                ],)  
              ],),
            ),
          ),
        )
      ],)
    );
  }
}
