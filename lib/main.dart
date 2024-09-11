
import 'package:flutter/material.dart';
import 'package:flutter_web/views/screens/dash_bord_screen/dash_bord_screen.dart';
import 'package:get/get.dart';

void main() async{
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

        initialRoute: null,
        smartManagement: SmartManagement.onlyBuilder,
        home: MainScreen(),
    );
  }
}


