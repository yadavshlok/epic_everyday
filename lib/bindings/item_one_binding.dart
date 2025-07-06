import 'package:get/get.dart';
import '../controllers/item_one_controller.dart';

class ItemOneBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<ItemOneController>(() => ItemOneController());
  }
}