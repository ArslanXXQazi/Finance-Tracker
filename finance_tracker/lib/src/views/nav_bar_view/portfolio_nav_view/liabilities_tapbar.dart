import 'package:finance_tracker/src/controller/components/assets_row.dart';
import 'package:finance_tracker/src/controller/constant/linker.dart';

class LiabilitiesTapbar extends StatelessWidget {
  const LiabilitiesTapbar({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body:Padding(
          padding:  EdgeInsets.symmetric(horizontal:width*.03,vertical: height*.02),
          child: SingleChildScrollView(
            child: Column(children: [
              AssetsRow(
                  name: 'House',
                  amount: '10000000.00'
              ),
              AssetsRow(
                  name: 'Stocks',
                  amount: '25000.00'
              ),

            ],),
          ),
        )
    );
  }
}
