import 'package:flutter/material.dart';
import 'package:untitled3/modules/log_in/page_prudcte/Home_Page.dart';

class success_Page extends StatelessWidget {
  bool isUpperCase=true;
      double radius=30.0;
      String string='Next';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(

      child:Container(
        height:double.infinity,
        width:double.infinity,
        color:Colors.black26,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(50.0)
                ),
              clipBehavior:Clip.antiAliasWithSaveLayer,
                child: Image.asset("assets/images/p (2).jpg",fit:BoxFit.fill,width:150),),
            SizedBox(height:30.0),
            Text('LOG IN SUCCESS',style:TextStyle(color:Colors.deepOrange,
            fontSize:25.0,
            fontStyle:FontStyle.italic)),
            Text('  Welcom in VPA...',style:TextStyle(color:Colors.grey,
              fontSize:20.0,)),
            SizedBox(height:30.0),



            Container(
              width:100.0,
              height:40.0,
              decoration:BoxDecoration(color:Colors.deepOrange,
                borderRadius:BorderRadius.circular(radius),
              ),
              child: SingleChildScrollView(


                  child:  MaterialButton(
                    onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>Home_Page()),);},
                    child:Text( 'Next'/*isUpperCase?string.toUpperCase():string*/,style:TextStyle(

                      fontSize:30.0,
                      color:Colors.grey,

                    ),),
                  ),


                ),
              ),

          ],
        ),
      ),

      ),


    );
  }
}
