import 'package:flutter/material.dart';
import 'package:flutter_getx/State%20Management/my_controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Reactive State Management',
                style:
                    TextStyle(color: const Color.fromARGB(239, 255, 255, 255)),
              ),
              backgroundColor: Colors.purple,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Obx(
                    () => Text(
                      //for individual varibales
                      //'Name is ${myController.student.name}',

                      //for entire class
                      'Name is ${myController.student.value.name}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myController.convertToUppercase();
                    },
                    child: Text(
                      'Upper Case',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                  ),
                ]))));
  }
}
