import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> messegerKey =
      GlobalKey<ScaffoldMessengerState>();

  static showSnackbar(String message) {
    final snackBar = SnackBar(
      backgroundColor: Color.fromARGB(255, 7, 123, 255).withOpacity(0.5),
      content: Text(
        textAlign: TextAlign.center,
        message,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );

    messegerKey.currentState!.showSnackBar(snackBar);
  }
}
