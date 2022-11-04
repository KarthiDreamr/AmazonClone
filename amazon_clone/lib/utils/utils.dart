import 'package:flutter/material.dart';

class Utils{
  Size getScreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;
    
  }
  showSnackBar({required BuildContext context , required String content }){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(content))
    );
  }

}