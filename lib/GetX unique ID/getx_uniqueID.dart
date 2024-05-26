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
          title: Text('Controller Unique ID'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              GetBuilder<MyController>(
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
