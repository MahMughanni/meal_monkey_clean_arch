import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_color_light.dart';
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
      extendBody: true,
      body: screen[currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTapNavBottom,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_sharp), label: AppStrings.menuBtnNav),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: AppStrings.offersBtnNav),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.transparent,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: AppStrings.profileBtnNav),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_open_rounded), label: AppStrings.moreBtnNav),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CustomFloatingBtn(
        onBtnPressed: () => setState(() {
          currentIndex = 2;
        }),
        color: (currentIndex == 2) ? AppColorLight.primaryColor : Colors.grey,
      ),
    );
  }

  void onTapNavBottom(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
