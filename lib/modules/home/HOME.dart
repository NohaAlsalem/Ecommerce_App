import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


  @override
class Home extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu,),
        title:
        Text('my app'),


        actions: [
          IconButton(
              icon: Icon(Icons.search,),
              onPressed: () {
                print('whate you want?');
              }
          ),
          IconButton(
              icon: Icon(Icons.notification_important),
              onPressed: () {
                print('ring the sign');
              }),
        ],
        elevation: 13,
        centerTitle: true,
      ),
body:Row(

    mainAxisAlignment:MainAxisAlignment.center,
   children: [
    Padding(
      padding: const EdgeInsets.all(0),
      child: Container(

        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(30.0),


        ),
        clipBehavior:Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment:Alignment.bottomCenter,
          children:[
              Image(image:NetworkImage('https://classicandcoolguitars.co.uk/wp-content/uploads/2018/06/MIJ-flower-precision2.jpg'),
                width: 200,
                height:200,
                fit:BoxFit.fill,
              ),
              Container(
                width:200.0,
                padding:EdgeInsets.symmetric(

                  vertical:5.0
                ),

                color:Colors.indigo.withOpacity(.7),
                child: Text('hello',
                  textAlign:TextAlign.center,
                  style:TextStyle(
                  color:Colors.white,
                  fontSize:20.0,

                ),),
              ),
            
            ]

          ),
      ),
    ),
 ]
    ),




    );
  }
  }