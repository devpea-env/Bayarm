import 'package:bayarm/routes/custum_routes.dart';
import 'package:bayarm/screens/login/phone_number_login/phone_login_screen.dart';
import 'package:bayarm/screens/login/social_login/social_login_screen.dart';
import 'package:bayarm/screens/navigations/navigation_screen.dart';
import 'package:bayarm/screens/profiles/profiles_content.dart';
<<<<<<< HEAD
import 'package:bayarm/screens/profiles/profiles_screen.dart';
import 'package:bayarm/screens/profiles/update_profile_screen.dart';
=======
import 'package:bayarm/screens/web_design/home/home_screen.dart';
>>>>>>> fb5a24087c9eb522298d38afb721e39d9e3964b1
import 'package:bayarm/screens/welcome/welcom_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:adaptive_theme/adaptive_theme.dart';

import 'constants/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCThibdQlziIE70rTXU8BhveRAHQWJeq_g",
          authDomain: "bayarm.firebaseapp.com",
          projectId: "bayarm",
          storageBucket: "bayarm.appspot.com",
          messagingSenderId: "856757854744",
          appId: "1:856757854744:web:56dc778d210b57a5f0596d"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static var auth = FirebaseAuth.instance;

  static Color appBarColor = primaryColor;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayarm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          primarySwatch: Colors.green,
          secondaryHeaderColor: Colors.white,
          textTheme: const TextTheme(bodyText2: TextStyle(color: textColor)),
          backgroundColor: Colors.brown),
      home: kIsWeb ? HomeWebScreen() : NavigationScreen(),
      color: secondaryColor,
      onGenerateRoute: CustomRoute.allRoutes,
    );
  }
}
