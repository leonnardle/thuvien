import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({Key? key ,
     required this.onTap,
     required this.text}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    child:  Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 200),
      decoration: BoxDecoration(color: Colors.grey[300],
      borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
        style: TextStyle(color: Colors.black),
        ),
      )
    ),
    );
  }
}