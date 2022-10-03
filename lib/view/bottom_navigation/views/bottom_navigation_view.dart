import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationController> {
  final bottomcontroller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            onTap: (value) {
              bottomcontroller.pageindex.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: bottomcontroller.pageindex.value,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black54,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            iconSize: 25,
            items: [
              const BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.home, size: 35),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  label: "History"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.lightbulb_outline_sharp,
                    size: 30,
                  ),
                  label: "Articles"),
              BottomNavigationBarItem(
                  icon: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.yellow)),
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                  label: "Profile"),
            ]);
      }),
      body: Obx(
        (() {
          return bottomcontroller.pages[bottomcontroller.pageindex.value];
        }),
      ),
    );
  }
}
