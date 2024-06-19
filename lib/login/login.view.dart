import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/login/loginView.controller.dart';
import 'package:myapp/login/widget/criarContaButton.widget.dart';
import 'package:myapp/login/widget/emailField.widget.dart';
import 'package:myapp/login/widget/loginButton.widget.dart';
import 'package:myapp/login/widget/passwordField.widget.dart';

class loginView extends GetView <LoginController> {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // teste
      appBar: AppBar(title: const Center(child: 
      Text('Woltz',
      style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 4, 12, 104)),
      ),
       // appBar: AppBar(title: const Center(child: Image(image: NetworkImage(
      //    "https://cdldivinopolis.com.br/imagens/1318/woltz-economia-de-energia_2552022150590.jpg"

       // ),
      //    width:40,
    //    ),
  
        ),
     
        elevation: 0,
        backgroundColor: Colors.transparent,
       
      ),
     
      body: _body(),
     //body: bodyTeste(),
    );
  }

  _body(){
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(12),
        children: [
            Center(
               child: Text(
                'Energia que faz bem',
                style: TextStyle(
                  color: Color.fromARGB(255, 89, 233, 12),
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: Get.height /3,
            ),
           EmailField(),
           SizedBox(height: 27,),
           passwordField(),
           SizedBox(height: 27,),
           LoginButton(),
           SizedBox(height:8),
           CriarContaButton()
           ],
           
      ),
    );
  }


  bodyTeste(){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [ Color.fromARGB(255, 63, 226, 9), 
        Color.fromARGB(255, 141, 240, 153)],
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 30,),
          Text(
            "Não tem Cadastro? Clique aqui!",
            style: TextStyle(
              color: Colors.white
            ),
          )
        ],
      ),



    );
  }
}