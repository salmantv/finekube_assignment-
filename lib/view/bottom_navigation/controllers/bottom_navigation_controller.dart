import 'package:finekubetask/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt pageindex = 0.obs;

  var pages = <Widget>[
    SliverAppBarExample(),
    Center(
      child: Text("List Page"),
    ),
    Center(
      child: Text("Meal Plan Page"),
    ),
    Center(
      child: Text("List Page"),
    ),
  ];
}
