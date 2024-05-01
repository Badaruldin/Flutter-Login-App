import 'package:flutter/widgets.dart';
import 'package:flutter_login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
static SignUpController get instance=> Get.find();

//Controllers for TextFields
final name=TextEditingController();
final phone=TextEditingController();
final email=TextEditingController();
final password=TextEditingController();

//Function to register new user and been called from design
void registerUser(String email,String password){
  AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
}

}