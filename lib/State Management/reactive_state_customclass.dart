import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //for individual variables
  // var student = Student();

  //for entire class
  final student = Student(name: "ragav", age: 20).obs;
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
                      //for individual variable
                      // 'Name is ${student.name.value}',

                      //for entire class
                      'Name is ${student.value.name}',

                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //for individual variable
                      // student.name.value = student.name.value.toUpperCase();

                      //for entire class
                      student.update((student) {
                        student?.name = student.name.toString().toUpperCase();
                      });
                    },
                    child: Text(
                      'Upper Case',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                  )
                ]))));
  }
}
