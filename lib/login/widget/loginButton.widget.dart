import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/login/loginView.controller.dart';

class LoginButton extends GetView <LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
   return CupertinoButton(
      onPressed: (){controller.tryToLogin();},
      color: Color.fromARGB(255, 2, 7, 155),
      child: const Text(
        "Entrar",
        style: TextStyle(
          color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600
        ),
      ),
    );

  //return ElevatedButton(
  //  onPressed: (){controller.tryToLogin();},
   // child: const Text('Entrar'),
  //  );
  }
}