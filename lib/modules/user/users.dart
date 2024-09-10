import 'package:flutter/material.dart';
import 'package:untitled3/models/user/user_model.dart';
class users extends StatelessWidget {
List<UserModel>Users=[
  UserModel(
id:1,
    name:'noha',
    phone:'09464533333',
  ),
  UserModel(
    id:2,
    name:'ahmad',
    phone:'09464533333',
  ),
  UserModel(
    id:3,
    name:'alsalem',
    phone:'09464533333',
  ),
  UserModel(
    id:4,
    name:'sja',
    phone:'09464533333',
  ),
  UserModel(
    id:5,
    name:'ahmad',
    phone:'09464533333',
  ),
  UserModel(
    id:6,
    name:'alsalem',
    phone:'09464533333',
  ),
  UserModel(
    id:7,
    name:'noha',
    phone:'09464533333',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.grey,
        title:Text('users',
        style:TextStyle(
          fontSize:40.0,
          fontWeight:FontWeight.bold,
          color:Colors.deepPurple,

        ),),
      ),
      body:ListView.separated(
        itemBuilder:(cntext,index)=>buildUserItem(Users[index]),
        separatorBuilder:(context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(start:20.0,),
          child: Container(
            width:double.infinity,
            height:1.0,
            color:Colors.grey[300],
          ),
        ),
        itemCount:Users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel User)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:[
        CircleAvatar(
          radius:25.0,
          child:Text('${User.id}',style:TextStyle(
            fontSize:25,
            fontWeight:FontWeight.bold,

          ),
          ),
        ),
        SizedBox(width:10.0,),
        Column(
          mainAxisSize:MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text('${User.name}',style:TextStyle(
              fontSize:25,
              fontWeight:FontWeight.bold,

            ),
            ),
            Text('${User.phone}',style:TextStyle(
              color:Colors.grey,
            ),),
          ],
        ),

      ],
    ),
  );
}

