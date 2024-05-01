import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/common_widgets/form_header_widget/form_header_widget.dart';
import 'package:flutter_login_app/src/features/authentication/screens/signup/signup_form_widget.dart';

import '../../../../constants/images_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(bDefaultSize - 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    title: bSignUpTitle,
                    subTitle: bSignUpSubTitle,
                    imageName: bLoginDesign2Image),
                SizedBox(height: bDefaultSize - 15),
                signup_form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
