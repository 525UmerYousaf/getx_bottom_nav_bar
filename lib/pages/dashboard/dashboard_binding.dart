//  The controller of GetX used lazy initialization meaning
//  they are loaded inside memory when app starts but gets
//  called or used only when user tap on any of tab since
//  my applciation has diff controller (one for each screen).
//  Therefore, I would bind my controllers with help of binding.
import 'package:get/get.dart';
import 'package:getx_bottomnavbar/pages/home/home_page.dart';
import '../add/add_controller.dart';
import '../dashboard/dashboard_controller.dart';
import '../home/home_controller.dart';

class DashBoardBinding extends Bindings {
  //  Following method overriden is compulsory inside "Bindings" class.
  @override
  void dependencies() {
    //  This method basically take dependencies which can be my app 3rd
    //  party packages or our own dependencies meaning file we've created.
    //  Inside my app loading all of my screens controllers are my
    //  dependencies.
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddController>(() => AddController());
  }
  //  Last thing I've to do is call this binding now, bcz once this
  //  binding is called everything will be automatically initialized
  //  including my controllers and thier dynamic properties.
}
