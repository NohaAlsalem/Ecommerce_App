import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:untitled3/modules/log_in/form.dart';

class Splash_Screen extends StatefulWidget {


  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     debugShowCheckedModeBanner:false,
      home:Scaffold(
        body:SplashScreen(
          backgroundColor:Colors.black26 ,
          image:Image.asset("assets/images/p (2).jpg",),
          seconds:4,
          navigateAfterSeconds:login(),
          title:Text('pleas waiting few second'),
          loaderColor:Colors.deepOrange,
          loadingText:Text('')

        ),
      ),

    );
  }
}
