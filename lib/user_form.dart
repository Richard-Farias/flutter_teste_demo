import 'package:flutter/material.dart';
import 'package:myapp/field_form.dart';
import 'package:myapp/user.dart';
import 'package:myapp/user_provider.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController controllerName =  TextEditingController();
  TextEditingController controllerEmail =  TextEditingController();
  TextEditingController controllerPassword =  TextEditingController();

  @override
  Widget build(BuildContext context) {

    void save(){
      UserProvider userProvider = UserProvider.of(context) as UserProvider;
      User user = User(
        name: controllerName.text,
         email: controllerEmail.text, 
         password: controllerPassword.text
         );

        int userLenght = userProvider.users.length;
        userProvider.users.insert(userLenght, user);

        Navigator.pop(context,"/list");     
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Create User'),
        backgroundColor: Color.fromARGB(255, 138, 238, 132) ,
      ),
      body: Center(
        child: Column(children: [ 
          FieldForm(label: 'Name:',
           isPassword: false, 
           controller: controllerName
           ),
          FieldForm(label: 'Email:',
           isPassword: false, 
           controller: controllerEmail
           ),
             FieldForm(label: 'Password:',
           isPassword: true, 
           controller: controllerPassword
           ),
           SizedBox(
            width: double.infinity,
             child: TextButton(
              onPressed: save, 
              child: Text('Salvar'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
                     
              ),
           )
        ],)
      ),
    );
  }
}