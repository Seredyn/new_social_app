import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:new_social_app/screens/sign_in_screen.dart';
import 'package:new_social_app/screens/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();//этот метод нужно вызывать перед тем, как мы будем использовать нативный код. Следующий метод (await Firebase.initializeApp) использует именно нативный код на бекграунде)
  await Firebase.initializeApp( //(await Firebase.initializeApp) использует именно нативный код на бекграунде)
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // Create new branch. IOS and Android was building
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SignUpScreen(),
      routes: {
        //"Sign in screen" : (context) => SignInScreen(),
        SignInScreen.id : (context) => SignInScreen(),
        SignUpScreen.id : (context) => SignUpScreen(),
      },
    );
  }
}
