import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/archive_tasks/archive_Tasks.dart';
import 'package:untitled3/layout/done_tasks/done_Tasks.dart';
import 'package:untitled3/layout/new_app/cuibit/states.dart';
import 'package:untitled3/layout/new_tasks/new_Tasks.dart';

import 'package:untitled3/modules/setteing/settings_Screen.dart';

class NewsCubit extends Cubit<NewsStates>{
  NewsCubit():super(NewsIneitialState());
  static NewsCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<BottomNavigationBarItem>bottmsItem=[
    BottomNavigationBarItem(
      icon:Icon(Icons.business,),
      label:'busness',
    ),
    BottomNavigationBarItem(
      icon:Icon(Icons.sports,),
      label:'sports',
    ),
    BottomNavigationBarItem(
      icon:Icon(Icons.science,),
      label:'Science',
    ),
    BottomNavigationBarItem(
      icon:Icon(Icons.settings,),
      label:'Settings',
    ),
  ];
  List<Widget> screens=[
    newTasks(),
    doneTasks(),
    archiveTasks(),
    settings_Screen(),
  ];
void changeBottomNavBar(int index){
  currentIndex=index;
  emit(NewsBottomNavState());
}



}