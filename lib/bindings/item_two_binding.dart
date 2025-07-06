import 'package:get/get.dart';
import '../controllers/item_two_controller.dart';

class ItemTwoBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<ItemTwoController>(() => ItemTwoController());
  }
}