import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  late Rx<int> pageIndex;

  @override
  void onInit() {
    pageIndex = 0.obs;
    super.onInit();
  }

  setSelectedIndex(int index) {
    pageIndex.value = index;
    print('index: $index');
  }
}
