
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/login/login.bindings.dart';
import 'package:myapp/login/login.view.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
    initialBinding: LoginBindings(),
    debugShowCheckedModeBanner: false,
    title: 'WoltzApp Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
      home: const loginView(),
   );

  }
}