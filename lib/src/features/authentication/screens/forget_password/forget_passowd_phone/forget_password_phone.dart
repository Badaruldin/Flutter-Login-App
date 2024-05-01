import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/images_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

import '../../../../../common_widgets/form_header_widget/form_header_widget.dart';

class ForgetPasswordPhone extends StatelessWidget {
  ForgetPasswordPhone({Key? key}) : super(key: key);
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
                  subTitle: bForgetPhoneSubTitle,
                ),
                SizedBox(height: bDefaultSize),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(bEmail),
                      prefixIcon: Icon(Icons.phone_android_outlined)),
                ),
                SizedBox(height: bDefaultSize - 10),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(bNext))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
