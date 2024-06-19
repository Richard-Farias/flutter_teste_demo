import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:myapp/login/loginView.controller.dart';

class passwordField extends GetView <LoginController>{
  const passwordField({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
            controller: controller.passwordInput,
            padding:EdgeInsets.all(10),
            placeholder: "Digite a senha",
            obscureText: true,
            placeholderStyle: TextStyle(color:Colors.white,fontSize: 14),
            style: TextStyle(color: Colors.black,fontSize: 14),
            decoration: BoxDecoration(color: Color.fromARGB(255, 89, 233, 12),
            borderRadius: BorderRadius.all(Radius.circular(7))),
           );
    //return TextField(
    //  controller: controller.passwordInput,
   //   decoration: InputDecoration(hintText: 'Senha'),
    //);
  }
}