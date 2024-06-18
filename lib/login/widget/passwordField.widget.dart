import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:myapp/login/loginView.controller.dart';

class passwordField extends GetView <LoginController>{
  const passwordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordInput,
      decoration: InputDecoration(hintText: 'Senha'),
    );
  }
}