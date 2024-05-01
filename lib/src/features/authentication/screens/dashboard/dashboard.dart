import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/images_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/widgets/dashboard_appbar.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/widgets/dashboard_categories_banner.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/widgets/dashboard_searchbar.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/widgets/dashboard_simple_banner.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/widgets/dashboard_top_categories.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppbar(),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(bDashboradCardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title text and SubText
                Text(
                  bDashboardTitle,
                  style: Theme.of(context).textTheme.displaySmall?.apply(color: Colors.black.withOpacity(.5)),
                ),
                Text(
                  bDashboardHeading, style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: bDashboradCardPadding),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(color: Colors.black, width: 3.0))),
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  padding: EdgeInsets.all(bDashboradCardPadding - 10.0),
                  //SearchBar
                  child: dashboard_searchbar(),
                ),
                SizedBox(height: 30.0),

                //Scrollable Categories Banner
                dashboard_categories_banner(),

                SizedBox(height: bDashboradCardPadding + 10.0),

                //Simple Banners and a Button
                dashboard_simple_banner(),

                SizedBox(height: bDashboradCardPadding),

                //Simple Label Text
                Text(
                  bDashboardTopCourses,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                //Scrollable Top Categories Banner
                dashboard_top_categories()
              ],
            )),
      ),
    );
  }
}
