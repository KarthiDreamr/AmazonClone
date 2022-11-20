import 'package:amazon_clone/screens/sign_in_screen.dart';
import 'package:amazon_clone/utils/color_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.web,
    );
  }
  else{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.android,
    );
    runApp(const AmazonClone());
  }

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
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, AsyncSnapshot<User?> user ){
          if ( user.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
        } else if (user.hasData){

          // FirebaseAuth.instance.signOut();

          return Scaffold(
            appBar: AppBar(
              title: Text("Amazon"),
            ),
            body: Text("Signed In"),
          );

    } else {
            return const SignInScreen();
    }
        }
    )

    );
  }
}


  
