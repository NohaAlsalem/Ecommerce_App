import 'dart:math';

import 'package:flutter/material.dart';

Widget defaultButton({
  double height=40.0,
  double width=100.0,
  Color background=Colors.deepOrange,
  bool isUpperCase=true,
  double radius=40.0,
  required Function func,
  required String text,
})=> Container(
  width:width,
height:height,
  child: MaterialButton(
    onPressed:()=>func(),
    child:Text(isUpperCase?text.toUpperCase():text,style:TextStyle(
      color:Colors.white,
    ),),
  ),
  decoration:BoxDecoration(color:background,
    borderRadius:BorderRadius.circular(radius),
  ),
);

Widget defaltFormField({
  double width=300.0,
  double height=40.0,
  required TextEditingController controller,
   TextInputType? type,
    Function? onSubmit,
 // Function?onChanged,
required  Function(String) validate,
   IconData? prfix,
  IconData? suffix,
   String? lable,
  bool isPassword=false,
  Function? suffixPressd,
  double radius=30.0,
  String? hintlable,
})=> Container(
  height:height,
  width:width,
  child:   TextFormField(
  controller:controller,
  obscureText:isPassword,

  validator:(x)=>validate(x!),
  keyboardType:type,
  onFieldSubmitted:(x)=>onSubmit!(x),
    //onChanged:(x)=>onChanged!(x),
  decoration:InputDecoration(
  labelText:lable,
  hintText:hintlable,
  border:InputBorder.none,
  //border:OutlineInputBorder(),
  prefixIcon:Icon(prfix),
  suffixIcon:suffix!=null ? IconButton(
      onPressed:(){ suffixPressd!();},
      icon: Icon(suffix)) :null,
  ),

  ),
  decoration:BoxDecoration(
    color:Colors.white54,
    borderRadius:BorderRadius.circular(radius),
    ),
  );



Widget defaultconainer({
  double width = 20.0,
  double height=50.0,
  double radius=30.0,

})=>Container(
    width:width,
  decoration:BoxDecoration(
    color:Colors.white54,
    borderRadius:BorderRadius.circular(radius),
  ),
    );