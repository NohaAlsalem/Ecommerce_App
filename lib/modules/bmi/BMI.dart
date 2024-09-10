import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result.dart';

class BMI extends StatefulWidget {

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool Mail=true;
  double height=30;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       backgroundColor:Colors.deepPurple,
        title:
          Text('BMI Calcurator'),
      ),
      body:Container(color:Colors.black45,
        child: Column(
          children:[

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:[
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState((){
                            Mail=true;
                          });
                        },
                        child: Container(

                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children:[
                              Icon(
                                Icons.ac_unit,
                                size:70.0,
                              ),
                              SizedBox(height:10.0,),
                              Text('Mail',style:TextStyle(
                                fontSize:15.0,
                                fontWeight:FontWeight.bold,
                              ),),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(15.0),
                            color:Mail?Colors.deepPurple:Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:20.0),
                    Expanded(
                      child: GestureDetector(
                         onTap:(){
                           setState((){
                             Mail=false;
                           });
                           },
                        child: Container(

                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children:[
                              Icon(
                                Icons.ac_unit_rounded,
                                size:70.0,
                              ),
                              SizedBox(height:10.0,),
                              Text('Femail',style:TextStyle(
                                fontSize:15.0,
                                fontWeight:FontWeight.bold,
                              ),),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(15.0),
                            color:!Mail?Colors.deepPurple:Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                ],
            ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,),
                child: Container(
                  child: Column(
                    children:[
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:10.0,),
                        child: Text('HEIGHT',style:TextStyle(
                          fontSize:25.0,
                          fontWeight:FontWeight.bold,
                        ),),
                      ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic,
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:[
                        Text('${height.round()}',style:TextStyle(
                          fontSize:40.0,
                          fontWeight:FontWeight.w900,

                        ),),
                        SizedBox(height:20.0,),
                        Text('CM',style:TextStyle(
                          fontSize:20.0,
                          fontWeight:FontWeight.w900,

                        ),),

                      ],
                    ),
                      Slider(value:height,max:100,min:0,
                        onChanged:(value){
                        setState((){
                          height=value;
                        });},),
                    ],
                  ),
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10.0),
                    color:Colors.grey[200],
                  ),
                ),
              ),

            ),

            Expanded(
             child:Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 mainAxisAlignment:MainAxisAlignment.center,
                 children:[
                   Expanded(
                     child: Container(


                       child: Column(
                         children:[
                           Text('WEIGHT',style:TextStyle(
                             fontSize:25.0,
                             fontWeight:FontWeight.bold,
                           ),),
                           Text('${weight}',style:TextStyle(
                             fontSize:40.0,
                             fontWeight:FontWeight.w900,

                           ),),
                           Row(  mainAxisAlignment:MainAxisAlignment.center,
                            children:[
                           FloatingActionButton(
                             onPressed:(){
                               setState((){
                                 weight--;
                               });
                             },
                             child:Icon(Icons.remove,),
                             mini:true,
                             heroTag:'removeweight',
                           ),
                              SizedBox(width:10.0),
                              FloatingActionButton(
                               onPressed:(){
                                 setState((){
                                   weight++;
                                 });
                               },
                               child:Icon(Icons.add,),
                                 mini:true,
                                heroTag:'addweight',
                               ),
                        ],),
                         ],
                 ),
                       decoration:BoxDecoration(
                         borderRadius:BorderRadius.circular(10.0),
                         color:Colors.grey[200],
                       ),
                     ),

                   ),
                   SizedBox(width:20.0,),
                   Expanded(
                     child: Container(
                       child: Column(
                         children:[
                           Text('AGE',style:TextStyle(
                             fontSize:25.0,
                             fontWeight:FontWeight.bold,
                           ),),
                           Text('${age}',style:TextStyle(
                             fontSize:40.0,
                             fontWeight:FontWeight.w900,

                           ),),
                           Row(
                             mainAxisAlignment:MainAxisAlignment.center,
                             children:[
                               FloatingActionButton(
                                 onPressed:(){
                                   setState((){
                                     age--;
                                   });
                                 },
                                 child:Icon(Icons.remove,),
                                 mini:true,
                                 heroTag:'removeage',
                               ),
                               SizedBox(width:10.0),
                               Container(

                                 child: FloatingActionButton(
                                   onPressed:(){
                                     setState((){
                                       age++;
                                     });
                                   },
                                   child:Icon(Icons.add,),
                                   mini:true,
                                   heroTag:'add age',
                                 ),
                               ),
                             ],),
                         ],
                       ),
                       decoration:BoxDecoration(
                         borderRadius:BorderRadius.circular(10.0),
                         color:Colors.grey[200],
                       ),
                     ),
                   ),
            ], ),
             ),
            ),

            Container(
              height:50.0,
              width:double.infinity,
              color:Colors.deepPurple,

              child: MaterialButton(
                onPressed:(){
                  var result=weight/pow(height/100,2);
               print(result.round());
                  Navigator.push(context,MaterialPageRoute(
                   builder:(context)=> bmi_result(
                     age:age,
                     result:result.round(),
                     Mail:Mail,
                   ),
                  ),);

               },
                child:Text('CALCUEAT',style:TextStyle(
                  color:Colors.white,
                ),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
