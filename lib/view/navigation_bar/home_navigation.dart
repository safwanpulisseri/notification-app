import 'package:flutter/material.dart';
import 'package:notification_app/view/cart/cart_page.dart';
import 'package:provider/provider.dart';
import '../../core/theme/color/app_colors.dart';
import '../../core/util/png_asset.dart';
import '../../view_model/navigation_controller.dart';
import '../home/view/home_page.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});


  final List<Widget> _pages = const [
    HomePage(),
    CartPage(),
    CartPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeNavigationController>(builder: (context,controller,child){
        return _pages[controller.selectedIndex];
        },
      ), 
      bottomNavigationBar: Consumer<HomeNavigationController>(
           builder: (context, controller, child) {
          return  BottomNavigationBar(
          backgroundColor: AppColor.background,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex, 
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColor.toneOne,
          unselectedItemColor: AppColor.toneOne,
          onTap: (index) {
            controller.updateIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                controller.selectedIndex == 0
                    ? AppPngPath.homeFilledIcon
                    : AppPngPath.homeIcon,
                width: 25,
                height: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
               controller.selectedIndex == 1
                    ? AppPngPath.cartFilledIcon
                    : AppPngPath.cartIcon,
                width: 25,
                height: 25,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
               controller.selectedIndex == 2
                    ? AppPngPath.orderFilledIcon
                    : AppPngPath.orderIcon,
                width: 25,
                height: 25,
              ),
              label: 'My Order',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                controller.selectedIndex == 3
                    ? AppPngPath.accountFilledIcon
                    : AppPngPath.accountIcon,
                width: 25,
                height: 25,
              ),
              label: 'Account',
            ),
          ],
        );
       },
      ),
    );
  }
}