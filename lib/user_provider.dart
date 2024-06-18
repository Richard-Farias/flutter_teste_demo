

import 'package:flutter/material.dart';
import 'package:myapp/user.dart';

class UserProvider extends InheritedWidget{
  final Widget child;
  List<User> users = [];

  UserProvider(
    {
    required this.child,
  }
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3480536161.
  ) : super(child: child);
  
  static UserProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<UserProvider>();
  }

bool updatesShoudNotifi(UserProvider widget){
  return true;
}

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }

}