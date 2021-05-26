import 'package:get/state_manager.dart';
import 'package:shopping/models/cartIemsModel.dart';

class AppMainController extends GetxController {
  RxList<CartItemModel> cartItems = RxList<CartItemModel>.empty(growable: true);
}
