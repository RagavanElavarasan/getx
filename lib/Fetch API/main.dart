import 'package:flutter/material.dart';
import 'package:flutter_getx/Fetch%20API/product_list_view.dart';
import 'package:get/get.dart';
import 'AppColor.dart';
import 'AppString.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
