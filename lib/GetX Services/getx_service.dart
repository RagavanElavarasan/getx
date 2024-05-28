//services - functionalities to be available throughout the app is alive
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('starting services...');
  await Get.putAsync(() async => await Service());
  print('All serives started...');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Sevices',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
