import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BoldText(text: 'Budget',fontSize: 22,),
        actions: [
          ImageIcon(AssetImage('assets/search.png'),size: width*.09,),
          SizedBox(width: width*.05,),
          ImageIcon(AssetImage('assets/scanner.png'),size: width*.09),
          SizedBox(width: width*.05,),
          ImageIcon(AssetImage('assets/more.png'),size: width*.09),
        ],
      ),
      body: Column(children: [

      ],),
    );
  }
}
