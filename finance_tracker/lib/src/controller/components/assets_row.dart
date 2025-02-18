import 'package:finance_tracker/src/controller/constant/linker.dart';

class AssetsRow extends StatelessWidget {
  String name;
  String amount;
  AssetsRow({super.key,required this.name,required this.amount});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
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
          CustomText(text: name,fontWeight: FontWeight.bold,),
        ],),
        CustomText(text:amount,color: Colors.green,),
      ],);
  }
}
