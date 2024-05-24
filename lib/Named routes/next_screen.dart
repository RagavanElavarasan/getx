import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Screen'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'This is Next Screen',
                  style: TextStyle(fontSize: 22),
                ),

                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/');
                    },
                    child: Text(
                      'Back to Main',
                      style: TextStyle(fontSize: 18, color: Colors.yellow),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange)),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/home');
                    },
                    child: Text(
                      'Back to Home',
                      style: TextStyle(fontSize: 18, color: Colors.yellow),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange)),

                //     Text(
                //   "${Get.parameters['someValue']}",
                //   style: TextStyle(color: Colors.red, fontSize: 20),
                // ),
              ]),
        ));
  }
}
