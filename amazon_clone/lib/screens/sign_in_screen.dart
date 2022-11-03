import 'dart:async';
import 'dart:io';
import 'package:amazon_clone/resources/authentication_methods.dart';
import 'package:amazon_clone/screens/sign_up_screen.dart';
import 'package:amazon_clone/utils/color_theme.dart';
import 'package:amazon_clone/utils/constants.dart';
import 'package:amazon_clone/utils/utils.dart';
import 'package:amazon_clone/widget/custom_main_button.dart';
import 'package:amazon_clone/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({ Key? key}) :super(key: key);
  @override 
  State<SignInScreen> createState() => _SignInScreenState();

}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();
  
  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    Amazon, 
                    height: screenSize.height * 0.10,
                  ),
                  Container(
                        height: screenSize.height *0.5,
                        width: screenSize.width * 0.8,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sign-In", 
                              style:
                                  TextStyle(fontWeight: FontWeight.w500, fontSize: 33),
                            ),
                            TextFieldWidget(
                              title: "Email",
                              controller: emailController,
                              obscureText: false,
                              hintText: "Enter your email",
                            ),
                            TextFieldWidget(
                              title: "Password",
                              controller: passwordController,
                              obscureText: true,
                              hintText: "Enter your Password",
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CustomMainButton(
                                color: yellowColor,
                                isLoading: false, 
                                onPressed: (){},
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(letterSpacing: 0.6, color: Colors.black),
                                )),
                            )
                          ],
                        )
                  ),
                  Row(
                    children: [
                      Expanded(
              
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "New to Amazon?",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ), 
                  CustomMainButton(
                    color: Colors.grey[400]!,
                    isLoading: false, 
                    onPressed: () async {
                      authenticationMethods.signInUser(email: emailController.text, password: passwordController.text);

                      String output = await authenticationMethods.signInUser(
                          email: emailController.text,
                          password: passwordController.text);

                      if (output=="success"){

                      } else {

                      }

                    },
                    child: const Text(
                      "Create an Amazon account",
                      style: TextStyle(letterSpacing: 0.6,color: Colors.black),
                    ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
