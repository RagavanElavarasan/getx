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
              'Home Screen',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {},
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
                  Get.back(result: "This data is from Home screen");
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
            //   "${Get.arguments}",
            //   style: TextStyle(
            //       color: const Color.fromARGB(255, 63, 19, 138), fontSize: 20),
            // )
          ],
        ),
      ),
    );
  }
}
