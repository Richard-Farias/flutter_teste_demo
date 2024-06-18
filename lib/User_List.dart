

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/user.dart';
import 'package:myapp/user_provider.dart';

class UserList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = UserProvider.of(context) as UserProvider;
    List<User> users = userProvider.users;
    int userLenght = users.length;

return Scaffold(
  appBar: AppBar(
    title: Text('User List'),
    leading: BackButton(
      onPressed:  (){
        Navigator.popAndPushNamed(context, "/create"); 
      },
    ),
  ),
  body: ListView.builder( 
    itemCount: userLenght,
    itemBuilder: (BuildContext contextBuilder,indexBuilder) =>
      Container(
        child: ListTile(
          title: Text(users[indexBuilder].name
          ),
    
         //decoration: BoxDecoration(
        //  border: Border(bottom: BorderSide(width: 0.4))
        // ),
          //subtitle: Text(users[indexBuilder].email),
        ),
      )
    )
);
  }
  
}