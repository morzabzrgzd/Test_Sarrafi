import 'package:get/get.dart';

class AssetsController extends GetxController {
  RxBool animatedIcon = false.obs;

  void openPopMenu() {
    animatedIcon.value = true;
  }

  void cancelPopMenu() {
    animatedIcon.value = false;
  }
}
