import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  void onInit() {
    //called ever change in value
    ever(count, (_) => print(count));

    // //called ever change in value of a list
    // everAll([count], (_) => print(count));

    // //called once change in value
    // once(count, (_) => print(count));

    // //called when the user stop typing for a period of time
    debounce(count, (_) => print("User stopped typing"),
        time: Duration(seconds: 1));
  }
}
