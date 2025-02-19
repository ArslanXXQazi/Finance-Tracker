// import 'package:finance_tracker/src/controller/constant/images.dart';
// import 'package:finance_tracker/src/views/nav_bar_view/home_nav_view/home_nav_view.dart';
// import 'package:flutter/material.dart';
//
// class NavBarView extends StatefulWidget {
//   const NavBarView({super.key});
//
//   @override
//   State<NavBarView> createState() => _NavBarViewState();
// }
//
// class _NavBarViewState extends State<NavBarView> {
//   int _selectedindex=0;
//   void navOntab(int index)
//   {
//     setState(() {
//       _selectedindex=index;
//     });
//   }
//
//   List widgetOptions=
//   [
//     HomeNavView(),
//     HomeNavView(),
//     HomeNavView(),
//     HomeNavView(),
//     HomeNavView(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final height=MediaQuery.sizeOf(context).height;
//     final width=MediaQuery.sizeOf(context).width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: widgetOptions.elementAt(_selectedindex),
//       bottomNavigationBar: Stack(
//         children: [
//           BottomNavigationBar(
//               backgroundColor: Colors.white,
//               currentIndex: _selectedindex,
//               onTap: navOntab,
//               selectedItemColor: Colors.black,
//               unselectedItemColor: Colors.black,
//
//               type: BottomNavigationBarType.fixed,
//               items: [
//                 BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.homeNav)),label: 'Home'),
//                 BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.transaction)),label: 'Transaction'),
//                 BottomNavigationBarItem(icon: CircleAvatar(
//                   backgroundColor: Colors.green,
//                   radius: width*.07,
//                   child: Icon(Icons.add,size: width*.13,color: Colors.white,),
//                 ),label: ''),
//                 BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.budgetNav)),label: 'Budget'),
//                 BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.portfolio)),label: 'Portfolio'),
//
//                 // BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: 'Home'),
//                 // BottomNavigationBarItem(icon: Icon(Icons.receipt_long),label: 'Orders'),
//                 // BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Inbox'),
//                 // BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: 'Wallet'),
//                 // BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
//               ]
//           ),
//
//         ],
//       ),
//     );
//   }
// }
import 'package:finance_tracker/src/views/nav_bar_view/budget_nav_view/budget_nav_view.dart';
import 'package:finance_tracker/src/views/nav_bar_view/home_nav_view/home_nav_view.dart';
import 'package:finance_tracker/src/views/nav_bar_view/portfolio_nav_view/portfolio_nav_view.dart';
import 'package:finance_tracker/src/views/nav_bar_view/transcation_nav_view/transcation_nav_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:finance_tracker/src/controller/constant/images.dart';


class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeNavView(),
      TranscationNavView(),
      BudgetNavView(),
      BudgetNavView(),
      PortfolioNavView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return [
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage(Appimages.homeNav), size: width * 0.07),
        title: "Home",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage(Appimages.transaction), size: width * 0.07),
        title: "Transaction",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          width: width * 0.2,
          height: width * 0.2,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: Icon(Icons.add, size: width * 0.10, color: Colors.white),
        ),
        title: "",
        activeColorPrimary: Colors.transparent,
        inactiveColorPrimary: Colors.transparent,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage(Appimages.budgetNav), size: width * 0.07),
        title: "Budget",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage(Appimages.portfolio), size: width * 0.07),
        title: "Portfolio",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: PersistentTabView(
        context,

        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(context),
        backgroundColor: Colors.grey.shade200,
        navBarStyle: NavBarStyle.style15, // Same style as in the image
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0),
          colorBehindNavBar: Colors.white,
        ),
         margin: EdgeInsets.all(0), // No extra margin
        // padding: EdgeInsets.symmetric(vertical: height * 0.015), // Fixed padding issue
      ),
    );
  }
}
