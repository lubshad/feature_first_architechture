import 'package:feature_first/src/features/navigation_screen/navigation_controller.dart';
import 'package:get/instance_manager.dart';

class DI {
  static inject() {
    Get.lazyPut(() => NavigationController());
  }
}
