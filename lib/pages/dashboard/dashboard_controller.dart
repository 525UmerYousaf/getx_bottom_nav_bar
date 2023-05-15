import 'package:get/get.dart';

class DashBoardController extends GetxController {
  //  This one track all user taps and touches
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    //  Below is getX built-in package
    update();
  }
}
