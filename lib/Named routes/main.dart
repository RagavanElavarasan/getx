import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'unknown_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        getPages: [
          GetPage(
            name: '/',
            page: () => MyApp(),
          ),
          GetPage(name: '/home', page: () => Home()),
          GetPage(name: '/nextscreen', page: () => NextScreen()),
          // GetPage(name: '/nextscreen/:someValue', page: () => NextScreen()),
        ],
        unknownRoute: GetPage(
          name: '/notfound',
          page: () => UnknownRoute(),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Named route'),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/home');
                      // Get.offNamed('/home');
                      // Get.offAllNamed('/home');
                      // Get.toNamed(
                      //   "/home?name=Ragavan&dept=IT",
                      // );
                    },
                    child: Text('Go to Home')),
              ],
            ),
          ),
        ));
  }
}

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Text(
          "Unknown Route",
          style: TextStyle(fontSize: 25, color: Colors.brown),
        ),
      ),
    );
  }
}
