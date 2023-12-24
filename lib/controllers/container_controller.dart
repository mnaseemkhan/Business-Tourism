import 'package:get/get.dart';

class SelectionController extends GetxController {
  RxInt selected = 0.obs;
  RxBool switchbutton = false.obs;

  void toggleIconColor() {
    switchbutton.value = !switchbutton.value;
  }

  void setSelectedIndex(int index) {
    selected.value = index;
  }
}