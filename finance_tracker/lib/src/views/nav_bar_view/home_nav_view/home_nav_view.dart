import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: BoldText(text: 'Budget'),
        actions: [
          ImageIcon(AssetImage('assets/search.png')),
          ImageIcon(AssetImage('assets/homeNav.png')),
          ImageIcon(AssetImage('assets/homeNav.png')),
        ],
      ),
      body: Column(children: [

      ],),
    );
  }
}
