import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget{
  DashboardAppbar({
    super.key,
  });
  final authRep=Get.put(AuthenticationRepository());

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(bAppName, style: Theme.of(context).textTheme.titleSmall),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: bCardBgColor),
            child: IconButton(icon: Icon(Icons.person),onPressed: (){
              authRep.logoutUser();
            },),
          ),
        ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80.0);
}
