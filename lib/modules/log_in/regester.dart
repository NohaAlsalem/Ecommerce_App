import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/modules/log_in/page_prudcte/Home_Page.dart';
import 'package:untitled3/modules/log_in/success_page.dart';
import 'package:untitled3/shared/components/components.dart';


class Rigester extends StatefulWidget {

  @override
  State<Rigester> createState() => _RigesterState();
}

class _RigesterState extends State<Rigester> {
  var name=TextEditingController();
  var email=TextEditingController();

  var password=TextEditingController();

  var rigesterkey=GlobalKey<FormState>();
  List<int> number=[1,2,3,4,5,6,7,8,9];

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.deepOrange,
        leading:IconButton(onPressed:(){Navigator.pop(context);},
          icon:Icon(Icons.arrow_left_sharp,),),
        title:Text('RIGESTER',style:TextStyle(
          color:Colors.white,
          fontSize:20.0,
          fontWeight:FontWeight.bold,
        )),
      ),
      body:Container(
        height:double.infinity,
        color:Colors.black26,
        child: SingleChildScrollView(

          child: Form(
            key:rigesterkey,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0,vertical:100.0),
              child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
               // crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  defaltFormField(
                    controller:name,
                    hintlable:'enter your full name',
                    type:TextInputType.name,
                    onSubmit: (x){print(x);},
                    validate:(String v){
                      if(((v==null ||v.isEmpty)||(v.length<5)||v.contains('${number}'
                      ) )){
                        return 'pleas enter yor full name';
                      }
                      return null;
                    },
                    prfix:Icons.drive_file_rename_outline,
                    //lable:'enter your email',
                  ),
                  SizedBox(height:30.0),
                  defaltFormField(
                  controller:email,
                hintlable:'enter your email',
                type:TextInputType.emailAddress,
                onSubmit: (x){print(x);},
                validate:(String v){
                  if(((v==null ||v.isEmpty)||(v.length<8)||!v.contains('@')
                  )){
                    return 'pleas enter email';
                  }
                  return null;
                },
                prfix:Icons.email,
                //lable:'enter your email',
              ),
              SizedBox(height:30.0),
                  defaltFormField(
                    hintlable:'enter your password',
                    controller:password,
                    type:TextInputType.visiblePassword,
                    isPassword:isPassword,
                    prfix:Icons.lock,
                    suffix: isPassword?Icons.visibility_off_sharp:Icons.visibility,
                    suffixPressd:(){
                      setState((){
                        isPassword=! isPassword;
                      });
                    },
                    onSubmit:(x){print(x);},
                    // onChanged:(x){print(x);},
                    validate:(String v){
                      if((v==null ||v.isEmpty)||(v.length<=4)){
                        return 'pleas enter password >4';
                      }
                      return null;
                    },

                    // lable:"enter your password",
                  ),
                  SizedBox(height:30.0),

                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      defaultButton(
                        width:150.0,
                        func:()
                        {
                          if(rigesterkey.currentState!.validate()) {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>success_Page()),);
                            print(name.text);
                            //print(password.text);
                          }
                        },
                        text:'RIGSTER',
                      ),
                    ],
                  ),
                  SizedBox(height:40.0),
                  SizedBox(height:40.0),
                  /*Row(children:[
                    MaterialButton(
                      onPressed:(){
                        Navigator.push(context,MaterialPageRoute(
                         builder:(context)=> Home_Page(),
                        ),
                        );

                      },

                    ),



                  ]),*/



                ]
              ),
            ),
          ),
        ),
      ), );
  }
}
