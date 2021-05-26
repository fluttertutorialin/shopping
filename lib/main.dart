import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controller.dart';
import 'package:shopping/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(AppMainController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pasta Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: routes(),
    );
  }
}
