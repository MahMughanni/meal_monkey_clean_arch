import 'package:flutter/material.dart';

import '../widgets/home_screen_widgets/custom_floatingBtn.dart';
import '../widgets/home_screen_widgets/home_page_body.dart';
import 'menu_screen.dart';
import 'offers_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 2;

  List<Widget> screen = [
    const MenuScreen(),
    const OffersScreen(),
    const HomePageBody(),
    const MenuScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: screen[currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: Colors.orange,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          currentIndex: currentIndex,
          onTap: onTapNavBottom,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_sharp), label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'offers'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.transparent,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_open_rounded), label: 'More'),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CustomFloatingBtn(
        onBtnPressed: () => setState(() {
          currentIndex = 2;
        }),
        color: (currentIndex == 2) ? Colors.orange : Colors.grey,
      ),
    );
  }

  void onTapNavBottom(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
