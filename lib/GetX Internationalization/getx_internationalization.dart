import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';
import 'messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Getx Internationalization'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 20, color: Colors.lightBlue),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
                child: Text('Hindi'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('fr', 'FR');
                },
                child: Text('French'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
                child: Text('English'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
