

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
                child: Column(
                  children: [
                  BoldText(text: 'Overview',),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CustomText(text: 'Financial health: '),
                    CustomText(text: 'Good',color: Colors.green.shade800,),
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
                      Expanded(child:  Column(children: [
                        SizedBox(
                          height: width*.25,
                          width: width*.25,
                          child: CircularProgressIndicator(
                            value:.7,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
                            backgroundColor: Colors.lightBlueAccent.shade100,
                            strokeWidth: width*.09,
                          ).animate().flipH(duration: 5.seconds),
                        )
                      ],)),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        BoldText(text: 'Top Assets',fontSize: 16,),
                          
                      ],))
                    ],),

                  )
                ],),
              ),
            ),
          ),
        )
      ],)
    );
  }
}
