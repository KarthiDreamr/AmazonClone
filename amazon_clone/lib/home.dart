import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amazon"),
      ),
      body: Column(
        children: [
          Text((firebaseAuth.currentUser?.email==null)?"Hi Error":"Hi ${firebaseAuth.currentUser?.displayName}"),
          TextButton(onPressed: ()=>firebaseAuth.signOut(), child: const Text("SignOut"))
        ],
      ),
    );
  }
}
