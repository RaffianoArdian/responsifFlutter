import 'package:get/get.dart';

class LayoutController extends GetxController {
  RxBool isMobileLayout = true.obs;

  @override
  void onInit() {
    super.onInit();
    checkScreenWidth();
  }

  void checkScreenWidth() {
    double screenWidth = Get.width;
    isMobileLayout.value = screenWidth < 640;
  }
}
