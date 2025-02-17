import 'package:finance_tracker/src/controller/components/custom_text.dart';
import 'package:flutter/material.dart';

class PortfolioNavView extends StatelessWidget {
  const PortfolioNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BoldText(text: 'PortfolioNavView'),),
    );
  }
}
