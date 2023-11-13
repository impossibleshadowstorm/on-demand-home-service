import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global_widgets/custom_bottom_nav_bar.dart';
import '../../global_widgets/main_drawer_widget.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        drawer: MainDrawerWidget(),
        body: controller.currentPage,
        bottomNavigationBar: CustomBottomNavigationBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.colorScheme.secondary,
          currentIndex: controller.currentIndex.value,
          onChange: (index) {
            controller.changePage(index);
          },
          children: [
            CustomBottomNavigationItem(
              icon: Icons.home_outlined,
              label: "Home".tr,
              color: Colors.black,
            ),
            CustomBottomNavigationItem(
                icon: Icons.assignment_outlined,
                label: "Bookings".tr,
                color: Colors.black),
            CustomBottomNavigationItem(
              icon: Icons.chat_outlined,
              color: Colors.black,
              label: "Chats".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.person_outline,
              color: Colors.black,
              label: "Account".tr,
            ),
          ],
        ),
      );
    });
  }
}
