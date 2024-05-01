import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ForgetPasswordOTP extends StatelessWidget {
  const ForgetPasswordOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(bDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: bDefaultSize+20),
                Text(
                  bOtpTitle,
                  style: TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  bOtpSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: bDefaultSize-10),
                Text(bOtpMessage,style: Theme.of(context).textTheme.bodyLarge,),
                SizedBox(height: bDefaultSize-10),
                OtpTextField(
                  numberOfFields: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  fillColor: Colors.black.withOpacity(0.15),
                  filled: true,
                   keyboardType: TextInputType.phone,
                  clearText: true,
                ),
                SizedBox(height: bDefaultSize-5),
                SizedBox(width: double.infinity,child: ElevatedButton(child: Text("VERIFY"),onPressed: (){},),),
              ],
            )),
      ),
    );
  }
}
