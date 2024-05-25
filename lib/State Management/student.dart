import 'package:get/get.dart';

class Student {
  //create an observable class by make the variables observable
  // var name = "ragavan".obs;
  // var age = 20.obs;

  //to make the entire class observable
  var name;
  var age;
  Student({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }
}
