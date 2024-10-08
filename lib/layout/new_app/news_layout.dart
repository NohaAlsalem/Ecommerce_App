import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cuibit/cubit.dart';
import 'cuibit/states.dart';

class News_app extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>NewsCubit(),
      child:BlocConsumer<NewsCubit,NewsStates>(
    listener: (context,state){},
        builder: (context,state){
      var cubit=NewsCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          title: Text('news'),
          actions: [
            IconButton(icon:Icon(Icons.search),onPressed: (){}
            ),
          ],
        ),
        body:cubit.screens[cubit.currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex:cubit.currentIndex,
        onTap:(index){
            cubit.changeBottomNavBar(index);

        },
        items:cubit.bottmsItem  ) ,
      );
        },
      ),);
  }
}
