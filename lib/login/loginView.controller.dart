import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/User_List.dart';
import 'package:myapp/home/home.view.dart';
import 'package:myapp/model/user.model.dart';


class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
 // static const email =  'admin@admin.com';
 // static const password = 'admin';
  @override
  final RxList <User> userList = RxList();
    void onInit(){
      super.onInit();
      userList.add(User('Riri','123'));
      userList.add(User('Roro','1234'));
  
  }
    
  void tryToLogin(){
    for(int i = 0; i < userList.length; i++){
      printError(info: userList.elementAt(i).email.toString());
       if(emailInput.text == userList.elementAt(i).email){
          checkPassword(i);
          printError(info: "Usuário Encontrado");
      break;
      }

    }

  }
   checkPassword(int i){
    if(passwordInput.text == userList.elementAt(i).password){
      login();
    }
   }


  // checkPassword(int i){
  //   print('Email Demo');
  //     switch(passwordInput.text){
  //     case password:
  //     login();
  //     break;
  //     case'':
  //     error('Campo senha deve ser preenchido');
  //     break;
  //     default:
  //     error('Senha incorreta');

  //   }
  // }

  void login(){
   Get.to(HomeView());
  } 

  void error (String error){
    print(error);
  }
}