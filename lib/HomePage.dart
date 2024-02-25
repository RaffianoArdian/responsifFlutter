import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LayoutController.dart';
import 'package:latihanresponsf/DataSiswa.dart';
import 'package:latihanresponsf/MobileLayout.dart';
import 'package:latihanresponsf/TabletLayout.dart';


class MyHomePage extends StatelessWidget {
  final LayoutController layoutController = Get.put(LayoutController());

  // Sample data for the grid items


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Obx(
            () => layoutController.isMobileLayout.value
            ? MobileLayout(gridItems: data_siswa)
            : TabletLayout(gridItems: data_siswa),
      ),
    );
  }
}
