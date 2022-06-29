import 'package:flutter/material.dart';

class TextFormDecorate extends StatelessWidget {
  final String text;
  const TextFormDecorate({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 300,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        autocorrect: false,
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: text,
            hintTextDirection: TextDirection.rtl,
            labelStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
