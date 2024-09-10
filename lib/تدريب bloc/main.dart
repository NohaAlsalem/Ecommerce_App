import 'package:flutter/material.dart';

class switche extends StatelessWidget {

  const switche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(icon:Icon(Icons.menu),
        onPressed: method(),),
      ),
          body:Center(
            child:Switch(onChanged: (bool value) {
              value=!value;
            }, value: true,

            ),

          )
    );
  }

  method() {
print('success');
  }
}
