import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {
final int result;
final bool Mail;
final int age;
bmi_result({
  required this.result,
  required this.Mail,
  required this.age,
});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){Navigator.pop(context);},
            icon: Icon(Icons.arrow_left_outlined,)),
        title:Text('BMI RESULT'),
      ),
        body:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text('gender: ${Mail?'Mail':'Femail'}',style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,
              )),
              Text('result: $result',style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,)),
              Text('age: $age',style:TextStyle(
                fontSize:25.0,
                fontWeight:FontWeight.bold,)),
            ],
          ),
        ),

    );
  }
}
