import 'package:flutter/material.dart';
import 'package:flutter_minus_get/controlers/counter_controler.dart';
import 'package:flutter_minus_get/utils/counter.dart';
import 'package:flutter_minus_get/widgets/button_control.dart';
import 'package:get/get.dart';

//import 'package:flutter_minus_get/widgets/button_control.dart';

class HomePageGetx extends StatelessWidget {
  HomePageGetx({Key? key}) : super(key: key);
  //final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ButtonControl(
            icon: Icons.add,
            onPressed: () {
              //counter.value++;
              //counter.increment();
              counterController.increment();
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonControl(
            onPressed: () {
              //counter.value--;
              counterController.decrement();
            },
            icon: Icons.remove,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              //counter.value = 0;
              counterController.clear();
            },
            child: const Text(
              "AC",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      body: Obx(
        () => Center(
          child: Text(
            //counter.value.toString(),
            counterController.result.value.toString(),
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
