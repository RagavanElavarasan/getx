import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //permanent-the instance will alive throughout the app
    // MyController myController = Get.put(
    //   MyController(),
    //   tag: 'instance1',
    //   permanent: true,
    // );

    //fenix - recreate the discarded instance when it is needed
    // Get.lazyPut(
    //   () => MyController(),
    //   fenix: true,
    // );

    //perform a synchronous operation
    Get.putAsync<MyController>(() async => await MyController());

    // //isSingleton is false - multiple instance can be created
    // Get.create<MyController>(() => MyController());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dependency Injection'),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.find<MyController>(tag: 'instance1');
                  // Get.find<MyController>();
                  Get.find<MyController>().incrementCount();
                },
                child: Text('Click Me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
