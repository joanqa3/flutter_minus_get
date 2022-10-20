// este import tiene todas las librerias GETX
//import 'package:get/get.dart';

// Estos 2 Imports son para observable y controller
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  // extendemos de GetxController
  //var count = 0.obs; // variable como observable
  RxInt result = 0.obs;
  void increment() {
    result.value++;
  }

  void decrement() {
    result.value--;
  }

  void clear() {
    result.value = 0;
  }
}
