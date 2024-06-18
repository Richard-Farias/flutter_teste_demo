import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/login/loginView.controller.dart';
import 'package:myapp/login/widget/emailField.widget.dart';
import 'package:myapp/login/widget/loginButton.widget.dart';
import 'package:myapp/login/widget/passwordField.widget.dart';

class loginView extends GetView <LoginController> {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('login')),),
      body: _body(),
    );
  }

  _body(){
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(12),
        children: [
            SizedBox(
              height: Get.height /3,
            ),
           EmailField(),
           SizedBox(height: 27,),
           passwordField(),
           SizedBox(height: 27,),
           LoginButton()
           ],
      ),
    );
  }
}