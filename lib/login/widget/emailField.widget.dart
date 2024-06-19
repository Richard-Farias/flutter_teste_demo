import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/login/loginView.controller.dart';

class EmailField extends GetView <LoginController> {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CupertinoTextField(
            controller: controller.emailInput,
            padding:EdgeInsets.all(10),
            placeholder: "Digite o seu e-mail",
            placeholderStyle: TextStyle(color:Colors.white,fontSize: 14),
            style: TextStyle(color: Colors.black,fontSize: 14),
            decoration: BoxDecoration(color: Color.fromARGB(255, 89, 233, 12),
            borderRadius: BorderRadius.all(Radius.circular(7))
            ),
           ),
    );

  //  return TextField(
     // controller: controller.emailInput,
     // decoration: InputDecoration(hintText: 'Email')
   // );
          
  }
}