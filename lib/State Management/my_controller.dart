import 'package:get/get.dart';
import 'student.dart';

class MyController extends GetxController {
  //for indidividual variables
  // var student = Student();
  // void convertToUppercase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  //for entire class
  var student = Student(name: "ragavan", age: 20).obs;

  void convertToUppercase() {
    student.update((student) {
      student?.name = student.name.toString().toUpperCase();
    });
  }

  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
