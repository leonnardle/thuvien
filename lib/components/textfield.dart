import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obScureText;


  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obScureText
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0),
        child: TextField(

          controller: controller,
          obscureText: obScureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: hintText,
          ),
        ),
        );
  }
}