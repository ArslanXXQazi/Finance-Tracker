import 'package:finance_tracker/src/controller/constant/linker.dart';

class AssetsTapbar extends StatelessWidget {
  const AssetsTapbar({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal:width*.03,vertical: height*.02),
        child: Column(children: [
          
        ],),
      )
    );
  }
}
