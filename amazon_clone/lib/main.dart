import 'package:amazon_clone/screens/sign_in_screen.dart';
import 'package:amazon_clone/utils/color_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
     Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAs5MoLKUAyKUS4tH-cCnmMdClFSDzI36Y",
            authDomain: "clone-82cc2.firebaseapp.com",
            projectId: "clone-82cc2",
            storageBucket: "clone-82cc2.appspot.com",
            messagingSenderId: "623159867524",
            appId: "1:623159867524:web:f1ee2f343674ddf633aad1"
    ));
  } else {
     Firebase.initializeApp();
  }
  runApp(const AmazonClone());
}
class AmazonClone extends StatelessWidget{
  const AmazonClone ({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Amazon Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const SignInScreen());
  }
}


  
