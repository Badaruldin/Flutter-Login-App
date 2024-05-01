import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images_strings.dart';
import '../../../../constants/sizes.dart';
import '../forget_password/forget_password_option/forget_password_bottom_sheet.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(bLoginDesign1Image),
                  height: height * 0.25,
                ),
                Text(
                  bLoginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  bLoginSubTitle,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: bFormHeight,
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: bFormHeight - 10),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "E-Mail",
                            prefixIcon:
                                Icon(Icons.supervised_user_circle_outlined),
                            prefixIconColor: bPrimaryColor,
                            suffixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(),
                          ),
                          autocorrect: true,
                        ),
                        SizedBox(height: bDefaultSize - 15),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: bPrimaryColor,
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: bFormHeight - 17,
                        ),

                        ForgetPasswordBottomSheet(),

                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  bLogin,
                                ))),
                        SizedBox(height: bFormHeight - 18),
                        Text(
                          "OR",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: bFormHeight - 18),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage(
                                tGoogleLogoImage,
                              ),
                              height: 20.0,
                            ),
                            label: Text(bSignInWithGoogle,
                                textAlign: TextAlign.center),
                          ),
                        ),
                        SizedBox(height: bFormHeight - 10),
                        Text.rich(
                          TextSpan(text: bDontHaveAnAccount, children: [
                            TextSpan(
                                text: "Sign Up",
                                style: TextStyle(color: Colors.blue))
                          ]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

