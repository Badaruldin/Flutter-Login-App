import 'package:flutter/material.dart';


class FormHeaderWidget extends StatelessWidget {
  FormHeaderWidget({
    required this.title,
    required this.subTitle,
    required this.imageName,

    super.key,
  });
  final String title,subTitle,imageName;

  @override
  Widget build(BuildContext context) {
  final height=MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(imageName),height: height * 0.25,
        ),
        Text(title,style: Theme.of(context).textTheme.headlineMedium),
        Text(subTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign:TextAlign.center,),
      ],
    );
  }
}
