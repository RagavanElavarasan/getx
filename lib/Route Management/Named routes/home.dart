import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This is Home Screen',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/nextscreen');
                  // Get.toNamed('/nextscreen/12345');
                },
                child: Text(
                  'Next screen',
                  style: TextStyle(fontSize: 18, color: Colors.yellow),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange)),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Back to main',
                  style: TextStyle(fontSize: 18, color: Colors.yellow),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange)),
            SizedBox(
              height: 8,
            ),
            // Text(
            //     "Name is ${Get.parameters['name']} and Department is ${Get.parameters['dept']}"),
          ],
        ),
      ),
    );
  }
}
