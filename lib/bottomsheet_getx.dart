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
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ),
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2,
                        )),
                    // barrierColor: Colors.greenAccent,
                    // backgroundColor: const Color.fromARGB(255, 0, 68, 2)
                    // enableDrag: true,
                  );
                },
                child: Text('Bottom Sheet'))
          ],
        ),
      ),
    ));
  }
}
