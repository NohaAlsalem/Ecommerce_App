import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/Exercise/diteals.dart';
import 'package:untitled3/modules/log_in/Splash_screen.dart';
import 'package:untitled3/modules/log_in/form.dart';
//import 'package:dio/dio.dart';
//import 'package:sqflite/sqflite.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:conditional_builder/conditional_builder.dart';
//import 'package:intl/intl.dart';
//import 'package:intl/intl_browser.dart';
import 'package:flutter_localizations/flutter_localizations.dart';





import 'package:untitled3/modules/massinger/massinger.dart';
import 'Exercise/products.dart';
import 'Exercise/lec7.dart';
import './Exercise/data_ditails.dart';
import './Exercise/diteals.dart';
import 'layout/home_layout.dart';
import 'layout/new_app/news_layout.dart';
import 'modules/bmi/BMI.dart';
import 'modules/home/HOME.dart';
import 'modules/bmi_result/bmi_result.dart';
import 'modules/counter/count.dart';
import 'modules/log_in/drawer/drawer.dart';

import 'modules/user/users.dart';
import 'تدريب bloc/main.dart';


void main() {

  runApp(MyApp());

}
//class my app
class MyApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: myapps());
}}
class myapps extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return myappss();
  }

}
class myappss extends State{
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner:false,
    // /* routes: {
    //    ditealss.routname:(context)=>ditealss(),
    //  },*/
    //   theme: ThemeData(
    //     scaffoldBackgroundColor:Colors.white,
    //     appBarTheme:AppBarTheme(
    //        // backwardsCompatibility:false,
    //         systemOverlayStyle:SystemUiOverlayStyle(
    //           statusBarColor:Colors.white,
    //           statusBarIconBrightness:Brightness.dark,
    //         ),
    //         elevation:0.0,
    //         iconTheme: IconThemeData(color:Colors.black),
    //         titleTextStyle:TextStyle(color:Colors.black,
    //         fontWeight:FontWeight.bold,
    //         fontSize:20.0),
    //         backgroundColor: Colors.white
    //
    //     ),
    //     bottomNavigationBarTheme:BottomNavigationBarThemeData(
    //     type:BottomNavigationBarType.fixed,
    //       selectedItemColor:Colors.deepOrange,
    //       elevation:20.0,
    //     ),
    //   ),
      //home:
      //switche(),
    //);

    return Scaffold(
          body: SizedBox(height:700,
            child: Container(
              color:Colors.black26,
              child: ListView.builder(

                itemBuilder:(context,index){
                  return my_productss(
                      id:product[index].id,
                      imagename: product[index].imagename ,
                      name:product[index].name ,
                    );
              },
    itemCount: product.length,
    ),
            ),
          ),

      );

  }

}



