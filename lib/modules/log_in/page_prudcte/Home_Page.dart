import 'package:flutter/material.dart';
import 'package:untitled3/modules/home_prudcte/home_Base.dart';
import 'package:untitled3/modules/my_acount/acount.dart';
import 'package:untitled3/modules/prefer_prudcte/prefer.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int currentIndex=0;

  List<Widget>myscreens=[
    Home_Base(),
    My_add(),
    add(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor:Colors.deepOrange,
       // leading:Icon(Icons.menu),
        title:Text('Welcom to VPA',style:TextStyle(
          fontSize:20.0,
          fontWeight:FontWeight.bold,
        ),),
      ),
      body:myscreens[currentIndex],
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
          icon:Icon(Icons.home_outlined,),
      label:'Home',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.my_library_add_outlined,),
    label:'Prefer',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.add_circle,),
    label:'My Acount',
    ),
    ],
        ),
      drawer:Drawer(
        child:ListView(

          children:[
            ListTile(title:Text('Addpeoudect',style:TextStyle(fontSize:20)),trailing:Icon(Icons.add)),
            ListTile(title:Text('Logout',style:TextStyle(fontSize:20)),trailing:Icon(Icons.logout)),
            ListTile(title:Text('lmlkn,'),subtitle:Text('click here')),

          ],
        ),
      ),

      // drawerScrimColor:Colors.deepOrange,


    );

  }
}
