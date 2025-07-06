import 'package:get/get.dart';
import '../controllers/item_four_controller.dart';

class ItemFourBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<ItemFourController>(() => ItemFourController());
  }
}