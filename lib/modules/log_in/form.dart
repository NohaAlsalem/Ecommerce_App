import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/modules/log_in/page_prudcte/Home_Page.dart';
import 'package:untitled3/modules/log_in/regester.dart';
import 'package:untitled3/modules/log_in/success_page.dart';
import 'package:untitled3/shared/components/components.dart';
class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var email=TextEditingController();

  var password=TextEditingController();

  var loginkey=GlobalKey<FormState>();
  bool isPassword=true;
  double radius=40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.deepOrange,
        elevation:10.0,
        title:Text('Log in',
            style:TextStyle(
              fontSize:30.0,
              fontWeight:FontWeight.bold,


            )

        ),
      ),
      body:Container(color:Colors.black26,
        height:double.infinity,

        child: Padding(
          padding: const EdgeInsetsDirectional.only(start:0.0,end:40.0,top:40,bottom:40),
          child: SingleChildScrollView(
            child: Form(
              key:loginkey,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:[

                   SizedBox(height:60.0),
                    defaltFormField(
                      hintlable:'enter your email',
                      controller:email,
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
                    SizedBox(height:40.0),
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
                    SizedBox(height:50.0),

                      //crossAxisAlignment:CrossAxisAlignment.end,

                          Row(
                           mainAxisAlignment:MainAxisAlignment.end,
                           children: [
                             defaultButton(
                              width:150.0,

                              func:()
                                 {
                                   if(loginkey.currentState!.validate()) {
                                    Navigator.push(context,MaterialPageRoute(builder:(context)=>success_Page()),);
                                     print(email.text);
                                     //print(password.text);
                                   }
                              },
                              text:'log in',
                      ),
                           ],
                         ),
                SizedBox(height:40.0),
                Row(children:[
                  Text('create new account?',style:TextStyle(color:Colors.deepOrange,fontSize:15.0)),

                  MaterialButton(
                    onPressed:(){
                      //print(result.round());
                      Navigator.push(context,MaterialPageRoute(
                        builder:(context)=> Rigester(),
                      ),
                      );

                    },
                    child:Text('Regstor',style:TextStyle(
                      color:Colors.blue,
                    ),),

                  ),



            ]),

                  ]

                ),
              ),
            ),
          ),
        ),
        ),


    );
  }
}
