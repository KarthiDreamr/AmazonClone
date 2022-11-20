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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(alignment: Alignment.topLeft,child: Text("Hi ${firebaseAuth.currentUser?.displayName} ,",style: const TextStyle(fontSize: 35),)),
          ),

          Align(alignment: Alignment.bottomCenter,child: TextButton(onPressed: ()=>firebaseAuth.signOut(), child: const Text("SignOut",style: TextStyle(fontSize: 25),)))
        ],
      ),
    );
  }
}

//FirebaseAuth.instance.currentUser?.updateDisplayName(nameController.text);