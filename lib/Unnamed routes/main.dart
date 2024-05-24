import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Unnamed Route'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Get.to(
                  //   Home(),
                  //   // fullscreenDialog: true,
                  //   transition: Transition.downToUp,
                  //   duration: Duration(milliseconds: 1000),
                  //   curve: Curves.easeIn,
                  // );
                  // Get.off(Home()); - can't move to prev screen
                  // Get.offAll(Home()); - cancel all prev screens
                  //Get.to(Home(), arguments: "This data is from Main screen");
                  var data = await Get.to(Home());
                  print("The received data is - $data");
                },
                child: Text('Go to Home'))
          ],
        ),
      ),
    ));
  }
}
