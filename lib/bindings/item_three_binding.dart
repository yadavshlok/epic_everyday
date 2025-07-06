import 'package:get/get.dart';
import '../controllers/item_three_controller.dart';

class ItemThreeBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<ItemThreeController>(() => ItemThreeController());
  }
}
