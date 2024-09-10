import 'package:flutter/material.dart';
//import 'package:sqflite/sqflite.dart';
import 'archive_tasks/archive_Tasks.dart';
import 'done_tasks/done_Tasks.dart';
import 'new_tasks/new_Tasks.dart';



class Home_Layout extends StatefulWidget {
  @override
  State<Home_Layout> createState() => _Home_LayoutState();
}
//creat database
//creat tables
//open data base
//insert
//get
//update
//delet

class _Home_LayoutState extends State<Home_Layout> {
  int currentIndex=0;

  List<Widget>screen=[
    newTasks(),
    doneTasks(),
    archiveTasks(),
  ];
  List<String>titles=[
    'new Task',
    'done Task',
    'archive Task',

  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:AppBar(
        title:Text(titles[currentIndex],
        style:TextStyle(
          fontSize:20.0,
          fontWeight:FontWeight.bold,
        ),),
      ),
      body:screen[currentIndex],

      floatingActionButton:FloatingActionButton(onPressed:(){
      /* try{ var name=await getName();
        print(name);
       throw('some error !!');

       }
        catch(error){
         print('error,${error.toString()}');
        }
        getName().then((value){
          print(value);
          print('alsalem');
          throw ('here error');
        }).catchError((error){
          print('error is: ${error.toString()}');
        });*/
      },
      child:Icon(Icons.add,)),
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex:currentIndex,
        elevation:300.0,
        showSelectedLabels:false,
        onTap:(index){
          setState((){
            currentIndex=index;
          });
         },
        items:
        [
          BottomNavigationBarItem(
            icon:Icon(Icons.menu,),
            label:'tasks',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.check,),
            label:'done',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.archive_outlined,),
            label:'archived',
          ),
        ],
      ),
    );
  }
  Future<String> getName() async
  {
    return 'noha ';
  }

  void CreatDatabase(){
//    var database=openDatabase();
  }
  void insertToDatabase(){

  }
void getFromDatabase(){

}
void updatInDatabase(){

}
void deletFromDatabase(){

}



}
