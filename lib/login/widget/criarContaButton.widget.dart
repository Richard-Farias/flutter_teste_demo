import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:myapp/login/loginView.controller.dart';

class CriarContaButton extends GetView <LoginController>{
  const CriarContaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 89, 233, 12),width: 0.8),
        borderRadius: BorderRadius.circular(7),
        ),

        child: CupertinoButton(
          onPressed: () {  },
          child: const Text("Criar conta",
          style: TextStyle(color:Color.fromARGB(255, 89, 233, 12),
          fontSize: 14,
          fontWeight: FontWeight.w600),
      ),
     
      ),
    );
  }

}