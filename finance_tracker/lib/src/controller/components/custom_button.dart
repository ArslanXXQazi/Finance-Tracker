import 'package:finance_tracker/src/controller/constant/linker.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color backColor;
  Color borderColor;
  Color fontColor;
  VoidCallback onTap;
   CustomButton({super.key,
     required this.onTap,
     required this.text,
     this.borderColor=Colors.green,
     this.backColor=Colors.green,
     this.fontColor=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor:backColor,
          minimumSize: Size(width*.1, height*.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: borderColor),
          )
        ),
        child: CustomText(text: text,fontWeight: FontWeight.bold,color: fontColor,fontSize: 12,));
  }
}
