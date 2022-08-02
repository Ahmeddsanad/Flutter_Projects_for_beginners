import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: non_constant_identifier_names
Widget DefaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true ,
  double radius = 3.0 ,
  required Function? function,
  required String text
}) => Container(
  height: 50.0,
  width: width,
  child: MaterialButton(
    onPressed: (){
      function!();
    },
    child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style:const TextStyle(
            fontSize: 15.0,
            color: Colors.white
        ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius
    ),
    color: background
  ),
);

Widget DefaultFormField({
  required TextEditingController Controller,
  required TextInputType type,
  required Function validated ,
  required String label,
  required IconData prefix,
  IconData? Suffix,
  Function? suffixPressed,
  Function? onSubmit,
  Function? onChange,
  bool isPassword = false ,
}) => TextFormField(
  controller: Controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit != null ? onSubmit() : null,
  onChanged: onChange != null ? onChange() : null,
  validator: (vale){
    return validated(vale);
  },
  obscureText: isPassword,
  decoration: InputDecoration(
    // hintText: 'Email Address'
    labelText: label,
    prefixIcon: Icon(
      prefix
    ),
    suffixIcon: Suffix != null ? IconButton(
      icon: Icon(
        Suffix,
      ),
      onPressed:(){
        suffixPressed!();
      },
    )
      : null ,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
);