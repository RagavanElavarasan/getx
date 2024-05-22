import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Dialog'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: 'Dialog Title',
                          titleStyle: TextStyle(fontSize: 20),
                          middleText: "This is the dialog message",
                          middleTextStyle: TextStyle(fontSize: 17),
                          backgroundColor: Colors.amber,
                          radius: 80,

                          //customize middle text
                          content: Row(
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text('data is loading...!'),
                              )
                            ],
                          ),
                          textCancel: "Cancel",
                          cancelTextColor: Colors.deepPurple,
                          textConfirm: "Confirm",
                          confirmTextColor: Colors.pink,
                          onCancel: () {},
                          onConfirm: () {},
                          buttonColor: Colors.blue,
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Button 1'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Button 2'),
                            ),
                          ],
                          barrierDismissible: false);
                    },
                    child: Text('Show Dialog'),
                  )
                ],
              ),
            )));
  }
}
