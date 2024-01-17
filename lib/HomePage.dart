import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LayoutController.dart';

class MyHomePage extends StatelessWidget {
  final LayoutController layoutController = Get.put(LayoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Obx(
            () => layoutController.isMobileLayout.value
            ? buildMobileLayout()
            : buildTabletLayout(),
      ),
    );
  }

  Widget buildMobileLayout() {
    return Center(
      child: Text('Mobile Layout'),
    );
  }

  Widget buildTabletLayout() {
    return Center(
      child: Text('Tablet Layout'),
    );
  }
}