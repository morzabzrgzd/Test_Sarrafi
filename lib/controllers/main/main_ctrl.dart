import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedPage = 0.obs;

  void changePage(index) {
    selectedPage.value = index;
  }
}
