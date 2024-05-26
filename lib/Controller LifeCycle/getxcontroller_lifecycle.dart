import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controller Lifecycle'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                // init: MyController()..increment(),
                initState: (state) => myController.increment(),
                dispose: (_) => myController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
