import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled3/Exercise/diteals.dart';



class my_productss extends StatelessWidget{

  final String  id;
  final String name;
  final  String imagename;
  my_productss({
    required this.id,
    required this.imagename,
    required this.name,
  });

  void selected(BuildContext context) {
    Navigator.of(context).pushNamed(ditealss.routname,
        arguments: id,);
  }

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        
         onTap: ()=>selected(context),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(

            child: Column(
              children: [

                Card(child: Image.asset(imagename, height: 200, width: 400.0)),
                SizedBox(height:10.0),

                Container(
                  height:40.0,
                  width:162.0,
                  decoration: BoxDecoration(

                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text(name, style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54)),
                ),
                SizedBox(height:10.0,),
              ],
            ),

            decoration: BoxDecoration(

                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(10.0)
            ),
          ),
        ),






    );
  }}





