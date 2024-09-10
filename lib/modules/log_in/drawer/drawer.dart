import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/shared/components/components.dart';

class drawer_add extends StatefulWidget {
  @override
  State<drawer_add> createState() => _drawer_addState();
}

class _drawer_addState extends State<drawer_add> {
  var name = TextEditingController();

  var data = TextEditingController();
  var image=TextEditingController();
  var price=TextEditingController();
  var amounte=TextEditingController();
  var phone=TextEditingController();
  var facebook=TextEditingController();

  var Key = GlobalKey<FormState>();
    DateTime? slactedTime;
  var radius=30.0;
  String dropdownvalue='Food';
  var items=['Food','Drinks','Make up','Midicines'];
  Widget period(){
    return Container(
      height:400.0,
      width:double.infinity,
        child:Column(
          children:[
            defaultconainer(),
            defaultconainer(),
          ],
        ),
        decoration:BoxDecoration(
        color:Colors.white54,
        borderRadius:BorderRadius.circular(radius),),
        );
  }
  void date() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:DateTime(2020),
      lastDate: DateTime.now(),
    ).then((value){
      if(value==null){return;}
      setState((){
        slactedTime =value;
      });
    });
  }

  @override
  Widget build(BuildContext cxt) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black26,
          child: SingleChildScrollView(
            child: Form(
              key: Key,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      //this name prudect
                    defaltFormField(controller: name,
                    type: TextInputType.name,
                hintlable:'enter name prudect',
                    validate: (String v){
              if(v==null ||v.isEmpty)
              {
              return 'pleas enter name your prudect';
              }
              return null;
              },
              ),
              SizedBox(height: 20.0),
                //this price prudect
                      InkWell(
                        onTap: period,
               child: defaltFormField(controller:price,
                  suffix: Icons.attach_money_sharp,
                  type: TextInputType.number,
                  hintlable:'enter price prudect',
                  validate: (String v){
                    if(v==null ||v.isEmpty)
                    {
                      return 'pleas enter price your prudect';
                    }
                    return null;
                  },
                ),),
                SizedBox(height: 20.0),
                      defaltFormField(controller:image,
                        suffix: Icons.image_outlined,
                        type: TextInputType.url,
                        hintlable:'enter image prudect',
                        validate: (String v){
                          if(v==null ||v.isEmpty)
                          {
                            return 'pleas enter image your prudect';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      // لازم نضيف كلمة قطعة بعد العدد//هون الكمية المتبقية
                      defaltFormField(controller:amounte,
                        type: TextInputType.number,
                        hintlable:'enter rest prudect',
                        validate: (String v){
                          if(v==null ||v.isEmpty)
                          {
                            return 'pleas enter number item rest';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      defaltFormField(controller:phone,
                        suffix: Icons.phone,
                        type: TextInputType.number,
                        hintlable:'enter youre mobile phone',
                        validate: (String v){
                          if(v==null ||v.isEmpty)
                          {
                            return 'pleas enter your mobile phone';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      defaltFormField(controller:facebook,
                        suffix: Icons.facebook,
                        type: TextInputType.url,
                        hintlable:'enter your facebook url',
                        validate: (String v){
                          if(v==null ||v.isEmpty)
                          {
                            return 'pleas enter your url facebook';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),



                      Container(
                   width:300.0,
                   height:40.0,

               child:Row(
                 children:[
                   Text('  ${slactedTime}',style:TextStyle(fontSize:20.0)),
                 IconButton(
                     onPressed: (){
                       date();

                },
                     icon:Icon(Icons.more_time_sharp),
                 ),

              ],),
                decoration:BoxDecoration(
                  color:Colors.white54,
                  borderRadius:BorderRadius.circular(radius),
                ),),
              SizedBox(height: 20.0),


                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    DropdownButton(
                      dropdownColor:Colors.white,
                      //hint:Text('Food'),
                      elevation : 2,
                      borderRadius:BorderRadius.circular(radius),
                      value:dropdownvalue,
                      icon: Icon(Icons.arrow_drop_down),
                      items: items.map((String items){
                        return DropdownMenuItem(value:items,
                          child:Text(items),);
                      }
                      ).toList(),
                      onChanged: (newValue){
                        setState((){
                          dropdownvalue!=newValue;
                        });
                        },


                            ),


              ],

          ),
                ],
        ),
      ),
    ),
    ),
      ),
    ),
    );
  }
}
