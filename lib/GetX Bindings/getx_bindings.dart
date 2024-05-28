//to remove the tight coupling between controller with our ui code
import 'package:flutter_getx/GetX%20Bindings/myapp_controller_binding.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'home_controller_binding.dart';
import 'my_controller.dart';
import 'home.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      // getPages: [
      //   GetPage(
      //       name: '/home',
      //       page: () => Home(),
      //       binding: HomeControllerBinding()),
      // ],
      getPages: [
        GetPage(
            name: '/home',
            page: () => Home(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => HomeControllerBinding());
            })),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Binding',
            style: TextStyle(color: const Color.fromARGB(220, 0, 0, 0)),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The Value is ${Get.find<MyController>().count}',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Get.to(Home(),
                  // transition: Transition.upToDown);
                  Get.toNamed(
                    '/home',
                  );
                  Transition.upToDown;
                },
                child: Text(
                  'Home',
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
