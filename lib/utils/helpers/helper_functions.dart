import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MHelperFunctions{
  MHelperFunctions._();

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message){
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.of(context).pop(),
                  child: const Text("OK"),
              ),
            ],
          );
        }
    );
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(BuildContext context){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWight(BuildContext context){
    return MediaQuery.of(Get.context!).size.width;
  }

}