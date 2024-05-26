import 'package:flutter/material.dart';
import 'my_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //create instance
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Simple State Management',
            style: TextStyle(color: const Color.fromARGB(239, 255, 255, 255)),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    ' The Value is ${controller.count}',
                    style: TextStyle(fontSize: 20),
                  );
                }),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                //instance already created
                myController.increment();

                //instance created
                //Get.find<MyController>().increment();
              },
              child: Text(
                'Increment',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
            )
          ],
        )),
      ),
    );
  }
}
