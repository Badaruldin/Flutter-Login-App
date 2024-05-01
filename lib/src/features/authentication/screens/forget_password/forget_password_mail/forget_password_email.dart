import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/images_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common_widgets/form_header_widget/form_header_widget.dart';
import '../forget_password_otp/forget_password_otp.dart';

class ForgetPasswordEmail extends StatelessWidget {
  ForgetPasswordEmail({Key? key}) : super(key: key);
  // final emailName=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(bDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FormHeaderWidget(
                  imageName: tForgetPasswordImage,
                  title: bForgetPassword,
                  subTitle: bForgetMailSubTitle,
                ),
                SizedBox(height: bDefaultSize),
                TextFormField(
                  // controller: emailName,
                  decoration: InputDecoration(
                      label: Text(bEmail),
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                SizedBox(height: bDefaultSize - 10),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){Get.to(()=>ForgetPasswordOTP());}, child: Text(bNext))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
