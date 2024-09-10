import 'package:flutter/material.dart';

import 'data_ditails.dart' ;
class ditealss extends StatelessWidget {
  static const routname='ditealss';

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)!.settings.arguments as String;
    final selcteed=diteals.firstWhere((w)=> w.id==id);
    return Scaffold(
      appBar:AppBar(
        title:Text('Diteals this bag')
      ),
      body:ListView.builder(
          //itemCount:diteals.length,
          itemBuilder: (cntext, index){
            return
      Container(
        child:Column(
          children:[
            Column(
              children: [
                Image.asset('assets/images/'+'${selcteed.imagename}'+'.jpg',height:200,fit:BoxFit.cover),
              ],
            ),
              SizedBox(height:20.0),
            Text('number of brouduct :'+'${selcteed.x}',style:TextStyle(fontSize:30.0,fontWeight:FontWeight.bold,color:Colors.deepPurpleAccent)),
            SizedBox(height:20.0),
              Text('number of brouduct :'+'${selcteed.name}',style:TextStyle(fontSize:30.0,fontWeight:FontWeight.bold,color:Colors.deepPurpleAccent)),
              SizedBox(height:20.0),
            Text('price of brouduct :'+'${selcteed.price}',style:TextStyle(fontSize:30.0,fontWeight:FontWeight.bold,color:Colors.deepPurpleAccent)),
            SizedBox(height:20.0),
            Text('discraption of brouduct :'+'${selcteed.discraption}',style:TextStyle(fontSize:30.0,fontWeight:FontWeight.bold,color:Colors.deepPurpleAccent)),
            SizedBox(height:20.0),
            ],


        ),
      );
      },
        itemCount:diteals.length,
      ),
    );
  }
}
