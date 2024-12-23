import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stroll_ui_test/controllers/navbar_controller.dart';
import 'package:stroll_ui_test/screens/home_screen.dart';
import 'package:stroll_ui_test/utils/constants/images_string.dart';
import 'package:stroll_ui_test/utils/theme/app_theme.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  final List<Widget> _screens = const [
    HomeScreen(),
    Center(child: Text('Bonfire')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(
      init: NavbarController(),
      builder: (controller) => Scaffold(
        body: _screens[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          onTap: (value) => controller.changeIndex(value),
          unselectedItemColor: AppTheme.primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                StrollImages.cardsIcon,
                color:
                    controller.currentIndex == 0 ? AppTheme.primaryColor : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                StrollImages.bonfireIcon,
                color:
                    controller.currentIndex == 1 ? AppTheme.primaryColor : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                StrollImages.messageIcon,
                color:
                    controller.currentIndex == 2 ? AppTheme.primaryColor : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                StrollImages.userIcon,
                color:
                    controller.currentIndex == 3 ? AppTheme.primaryColor : null,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
