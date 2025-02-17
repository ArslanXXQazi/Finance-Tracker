import 'package:finance_tracker/src/views/nav_bar_view/home_nav_view/home_nav_view.dart';
import 'package:flutter/material.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _selectedindex=0;
  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List widgetOptions=
  [
    HomeNavView(),
    HomeNavView(),
    HomeNavView(),
    HomeNavView(),
    HomeNavView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: _selectedindex,
              onTap: navOntab,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/homeNav.png')),label: 'Home'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/transaction.png')),label: 'Home'),
                BottomNavigationBarItem(icon: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 30,
                ),label: ''),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/portfolio.png')),label: 'Home'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/budget.png')),label: 'Home'),

                // BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: 'Home'),
                // BottomNavigationBarItem(icon: Icon(Icons.receipt_long),label: 'Orders'),
                // BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Inbox'),
                // BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: 'Wallet'),
                // BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
              ]
          ),

        ],
      ),
    );
  }
}
