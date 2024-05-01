import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/signup_controller.dart';
class signup_form extends StatelessWidget {
  signup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final _formkey=GlobalKey<FormState>();
  final controller=Get.put(SignUpController());
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text("Full Name"),
              )),
          SizedBox(height: bDefaultSize - 20),
          TextFormField(
              controller: controller.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                label: Text("Phone No"),
              )),
          SizedBox(height: bDefaultSize - 20),
          TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                label: Text("E-Mail"),
              )),
          SizedBox(height: bDefaultSize - 20),
          TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_sharp),
                label: Text("Password"),
              )),
          SizedBox(height: bDefaultSize - 15),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if(_formkey.currentState!.validate()){
                      //calling function to register new user
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.phone.text.trim());
                    };
                  }, child: Text(bSignup))),
          SizedBox(
            height: bDefaultSize - 20,
          ),
          Text("OR"),
          SizedBox(
            height: bDefaultSize - 20,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: Image(image: AssetImage(tGoogleLogoImage,),height: 20.0,),
              label: Text(bSignInWithGoogle,textAlign: TextAlign.center),
            ),
          ),
          SizedBox(height: bDefaultSize - 15),
          Text.rich(TextSpan(
              text: bAlreadyHaveAnAccount,
              children: [
                TextSpan(
                    text: bLogin,
                    style: TextStyle(color: Colors.blue))
              ])),
        ],
      ),
    );
  }
}
