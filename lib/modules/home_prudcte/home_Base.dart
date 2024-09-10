import 'package:flutter/material.dart';
import 'package:untitled3/shared/components/components.dart';

class Home_Base extends StatelessWidget {
  var search=TextEditingController();
  var searchkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:Container(
        width: double.infinity,
        height:double.infinity ,
        color:Colors.black26,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[

            Padding(
              padding: const EdgeInsetsDirectional.only(start:8.0,end:10.0,top:10,bottom:10),
              child: Form(
                key:searchkey,
               child: defaltFormField(
                 width:500,

                 controller:search,
                 hintlable:'search',
                 type:TextInputType.text,
                 onSubmit: (x){print(x);},
                 validate:(String v){
                   if(v==null ||v.isEmpty){
                     return 'pleas enter yor full name';
                   }
                   return null;
                 },
                 prfix:Icons.search,
                 //lable:'enter your email',
               ),

              /* TextFormField(
                 decoration:InputDecoration(
                hintText:'search',
                prefixIcon :Icon(Icons.search),
                   border:OutlineInputBorder(),


               ),
               ),*/
              ),
            ),
          ],
        ),
      ),


    );
  }
}
