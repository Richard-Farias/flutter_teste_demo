import 'package:get/get.dart';
import 'package:myapp/login/loginView.controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {  
    Get.lazyPut(() => LoginController());
  }
  

}