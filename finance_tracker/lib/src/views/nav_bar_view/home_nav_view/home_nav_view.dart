import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BoldText(text: 'Home Nav View'),),
    );
  }
}
