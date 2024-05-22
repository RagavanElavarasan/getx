import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Snack Bar",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Snack Bar'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "Title",
                        "Message of the snack bar",
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: const Color.fromARGB(255, 0, 0, 0),
                        animationDuration: Duration(milliseconds: 1000),
                        backgroundGradient: LinearGradient(colors: [
                          Colors.red,
                          const Color.fromARGB(255, 242, 137, 0)
                        ]),
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.easeIn,
                        reverseAnimationCurve: Curves.easeOut,
                        icon: Icon(
                          Icons.check,
                          color: Color.fromARGB(255, 6, 6, 6),
                        ),
                      );
                    },
                    child: Text('Show Snackbar')),
              ],
            ),
          ),
        ));
  }
}
