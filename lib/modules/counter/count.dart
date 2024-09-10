//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:untitled3/modules/counter/cubit/state.dart';

import 'cubit/cubit.dart';
class count extends StatelessWidget {
  @override



  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
         create:(BuildContext context)=> counterCubit(),

           child: BlocConsumer<counterCubit,counterStates>(
             listener: (context,state){
               if(state is counterplusState)print('plus state${state.counter}');
               if(state is counterminusState)print('minus state${state.counter}');
             },
             builder: (context,state){
               return Scaffold(
               appBar: AppBar(
               title: Text('counter'),
               ),
               body: Center(
               child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               TextButton(onPressed: () {
                 counterCubit.get(context).minus();


               },
               child: Text('MINU'),
               ),
               Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,),
               child: Text('${counterCubit.get(context).counter}', style: TextStyle(
               fontSize: 40.0,
               fontWeight: FontWeight.w900,

               ),),
               ),
               TextButton(onPressed: () {
                 counterCubit.get(context).plus();
               },
               child: Text('BLUS'),
               ),
               ],
               ),
               ),

               );
             },
           ),




    );

  }
}
