import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'homeScreen.dart';
import 'mainmenu.dart';
import 'Squad.dart';
import 'Kits.dart';
import 'away.dart';
import 'third.dart';
import 'trophies.dart';
import 'records.dart';
import 'package:mancity/Fixtures.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: SignUp(),
      routes: {
        '/on': (context)=> screenOne(),
        '/homeScreen':(context)=> homeScreen(),
        '/squad' :(context) => squad(),
        '/homekits': (context)=> homekits(),
        '/awaykits': (context)=> awayKit(),
        '/thirdkits': (context)=> thirdKit(),
        '/trophies': (context)=> trophies(),
        '/records': (context)=> records(),
        '/fixtures': (context)=> Fixtures(),
        '/signUp': (context)=>SignUp()
      },
      );
  }
}

