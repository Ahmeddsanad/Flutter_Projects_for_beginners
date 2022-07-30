import 'package:flutter/material.dart';
// ignore: non_constant_identifier_names
Widget DefaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true ,
  double radius = 3.0 ,
  required Function function ,
  String? validate,
  required String text
}) => Container(
  height: 50.0,
  width: width,
  child: MaterialButton(
    onPressed: function(),
    child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style:const TextStyle(
            fontSize: 15.0,
            color: Colors.white
        ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
        radius
    ),
    color: background
  ),
);