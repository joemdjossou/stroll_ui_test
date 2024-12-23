import 'package:get/get.dart';

class NavbarController extends GetxController {
  final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void changeIndex(int index) {
    _currentIndex.value = index;
    update();
  }

  @override
  void onInit() {
    changeIndex(0);
    super.onInit();
  }
}
