import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/authentication/screens/forget_password/forget_passowd_phone/forget_password_phone.dart';
import 'package:flutter_login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_email.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class ForgetPasswordBottomSheet extends StatelessWidget {
  ForgetPasswordBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Builder(
        builder: (context) => TextButton(
          child: Text(
            bForgetPassword,
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            //Builder(builder: (context)=>)
            showBottomSheet(
              context: context,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.blue.shade50),
                padding: EdgeInsets.all(bDefaultSize - 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.0),
                    Text(bForgetPasswordTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    SizedBox(height: 10.0),
                    Text(bForgetPasswordSubTitle,
                        style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(height: 20.0),
                    ForgetPasswordTileWidget(
                      icon: Icons.mail_outline_outlined,
                      title: bEmail,
                      subTitle: bResetViaEMail,
                      onTap: () {
                        Navigator.pop(
                            context); // to close BottomSheet and moves and then moves to next screen below
                        Get.to(() => ForgetPasswordEmail());
                      },
                    ),
                    SizedBox(height: 15.0),
                    ForgetPasswordTileWidget(
                      icon: Icons.phone_android_rounded,
                      title: bPhoneNo,
                      subTitle: bResetViaPhone,
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(() => ForgetPasswordPhone());
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ForgetPasswordTileWidget extends StatelessWidget {
  ForgetPasswordTileWidget({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    super.key,
  });

  final IconData icon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Colors.grey.shade300),
        padding: EdgeInsets.all(5.0),
        //color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 40.0),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headlineMedium),
                Text(subTitle, style: Theme.of(context).textTheme.labelLarge)
              ],
            )
          ],
        ),
      ),
    );
  }
}
