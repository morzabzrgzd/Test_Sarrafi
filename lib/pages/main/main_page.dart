import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_sarrafi/controllers/main/main_ctrl.dart';
import 'package:test_sarrafi/models/bnb/bnb_model.dart';
import 'package:test_sarrafi/pages/assets/assets_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainCtrl = Get.put(MainController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: mainCtrl.selectedPage.value,
            iconSize: 23,
            onTap: (index) {
              mainCtrl.changePage(index);
            },
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              bottomNavigationBarItems.length,
              (index) => BottomNavigationBarItem(
                icon: bottomNavigationBarItems[index].icon,
                label: bottomNavigationBarItems[index].text,
                activeIcon: bottomNavigationBarItems[index].activrIcon,
                tooltip: bottomNavigationBarItems[index].text,
              ),
            ),
          ),
        ),
      ),
      body: const AssetsPage(),
    );
  }
}
