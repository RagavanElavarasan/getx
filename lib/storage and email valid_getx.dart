import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetStorage & Email Validation'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {
                      if (GetUtils.isEmail(emailEditingController.text)) {
                        storage.write('email', emailEditingController.text);
                      } else {
                        Get.snackbar('Error', 'Invalid Email');
                      }
                    },
                    child: Text('Write')),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("The Email is ${storage.read("email")}");
                  },
                  child: Text('Read'))
            ],
          ),
        ),
      ),
    );
  }
}
