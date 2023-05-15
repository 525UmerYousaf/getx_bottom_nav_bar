import 'package:get/get.dart';

class AddController extends GetxController {
  var counter = 0.obs;

  void increaseConter() {
    counter.value++;
  }
}
