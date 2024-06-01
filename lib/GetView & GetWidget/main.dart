import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'count_controller.dart';

void main() {
  runApp(MyApp());
}

//GetView - if we have single controller we can use this than using stateless widget
class MyApp extends GetWidget<CountController> {
  @override
  Widget build(BuildContext context) {
    Get.create(() => CountController());
    final CountController controller = Get.find<CountController>();
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('GetView & GetWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "The Value is ${controller.count}",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  print(controller.hashCode);
                  controller.increment();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    ));
  }
}
