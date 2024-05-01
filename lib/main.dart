import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/firebase_options.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:flutter_login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_login_app/src/utils/themes/BAppThemeMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: ThemeData(brightness: Brightness.light,),
      theme: BAppColor.lightTheme,
      //theme: ThemeData(brightness: Brightness.light),//it is basically used for defining light/dark mode colors
      //darkTheme:ThemeData(brightness: Brightness.dark),
      darkTheme: BAppColor.darkTheme,
      themeMode: ThemeMode.light,
      home: Dashboard(),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 700),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Login App"),
        leading: const Icon(FontAwesomeIcons.brandsFontAwesome),
        actions: [Icon(MdiIcons.abacus)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "From the halt of AsiaCup",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "after runnig Nepal ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "its India next to be faced",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Submit now")),
            OutlinedButton(onPressed: () {}, child: const Text("Abort it")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage("assets/images/Make_a_call.png"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
