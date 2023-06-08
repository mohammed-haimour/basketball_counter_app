import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyBtn extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final innerText;
  final void Function() onPressed;

  const MyBtn({super.key, required this.onPressed , this.innerText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: myOrange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        '$innerText',
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
