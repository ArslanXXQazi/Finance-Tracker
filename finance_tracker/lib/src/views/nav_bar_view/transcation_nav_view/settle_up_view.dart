import 'package:finance_tracker/src/controller/constant/linker.dart';

class SettleUpView extends StatelessWidget {
  const SettleUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: height*.015,horizontal: width*.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Column(children: [
                  CustomText(text: 'Feb',color: Colors.grey,),
                  CustomText(text: '11',color: Colors.grey,),
                ],),
                SizedBox(width: width*.03,),
                Container(
                  height: height*.04,
                  width: width*.1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
                SizedBox(width: width*.03,),
                Column(
                  children: [
                    CustomText(text: "name",fontWeight: FontWeight.bold,),
                    CustomText(text: "name",fontWeight: FontWeight.bold,),
                  ],
                ),
              ],),
              CustomText(text:"amount",color: Colors.green,),
            ],),
        )
      ],),
    );
  }
}
