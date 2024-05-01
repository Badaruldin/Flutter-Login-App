import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.OBmodel,
  });

  final OnBoardingModel OBmodel;
  @override
  Widget build(BuildContext context) {
    final Size screensize=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(15.0),
      color: OBmodel.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
              image: AssetImage(OBmodel.image),
              height: screensize.height * 0.34,),
          Text(OBmodel.title, style: Theme.of(context).textTheme.displaySmall,textAlign: TextAlign.center,),
          Column(
            children: [
              Text(OBmodel.subTitle, style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,),
              SizedBox(height: 70.0),
              Text(OBmodel.counterText, style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
              SizedBox(height: 80.0,)
            ],
          ),
        ],
      ),
    );
  }
}
