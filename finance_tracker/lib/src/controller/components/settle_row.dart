import 'package:finance_tracker/src/controller/constant/linker.dart';

class SettleRow extends StatelessWidget {

  String month;
  int    date;
  String name;
  String card;
  String amount;

   SettleRow({super.key,
     required this.month,
     required this.date,
     required this.name,
     required this.card,
     required this.amount,

   });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height*.006),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Column(children: [
                  CustomText(text: month,color: Colors.grey,),
                  CustomText(text: "$date",color: Colors.grey,),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: name,fontWeight: FontWeight.bold,),
                    CustomText(text: card,fontWeight: FontWeight.bold,color: Colors.grey,),
                  ],
                ),
              ],),
              CustomText(text:amount,color: Colors.red,fontWeight: FontWeight.bold,),
            ],),
          Divider(),
        ],
      ),
    );
  }
}
