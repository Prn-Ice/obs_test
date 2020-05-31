import 'package:get/get.dart';
import 'package:obs_test/counter.dart';

class Controller extends GetController {
  Counter counter = Counter();
  // IntX counter = 0.obs;
  void increment() {
    counter.count.value++;
    // update(this);
  }
}