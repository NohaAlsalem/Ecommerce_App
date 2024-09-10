import 'package:flutter/material.dart';

class massinger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(backgroundColor:Colors.white,
    appBar:AppBar(backgroundColor:Colors.white,
      titleSpacing:20.0,
      title:Row(
    children: [
      CircleAvatar(
        radius:20.0,
        backgroundImage:NetworkImage('https://classicandcoolguitars.co.uk/wp-content/uploads/2018/06/MIJ-flower-precision2.jpg',),
      ),
      SizedBox(width:15.0),
      Text('chate',
      style:TextStyle(
        color:Colors.black,

      ),),
    ],
      ),
    actions:[
      IconButton(
    onPressed: (){},
        icon:CircleAvatar(
          radius:25.0,
          backgroundColor:Colors.blue,
          child:Icon(Icons.camera_alt,
          size:16.0,
          color:Colors.white,),

      ),
      ),
      IconButton(
        onPressed: (){},
        icon:CircleAvatar(
          radius:25.0,
          backgroundColor:Colors.blue,
          child:Icon(Icons.edit,
            size:16.0,
            color:Colors.white,),

        ),
      ),
    ],


    ),
body:Padding(
  padding: const EdgeInsets.all(20.0),
  child:   SingleChildScrollView(
    child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children:[

        Container(
          height:100.0,
          child: ListView.separated(

            scrollDirection:Axis.horizontal,
            itemBuilder:(context, index)=>buildStoryItme(),
           separatorBuilder:(context,index)=>SizedBox(width:20.0),
            itemCount:9,),
          ),
          SizedBox(height:20.0),
             ListView.separated(
               shrinkWrap:true,
                physics:NeverScrollableScrollPhysics(),
              itemBuilder:(context,index)=>buildChatItem(),
              separatorBuilder:(context,index)=>SizedBox(height:20.0,),
               itemCount:13,
            ),
          

      ],

    ),
  ),
),
    );
  }
  Widget buildChatItem()=> Row(
    children:[
      Stack(
          alignment:AlignmentDirectional.bottomEnd,
          children:[
            CircleAvatar(
              radius:25,
              backgroundImage:NetworkImage('https://classicandcoolguitars.co.uk/wp-content/uploads/2018/06/MIJ-flower-precision2.jpg'),
            ),
            //CircleAvatar(
            // radius:8,
            //  backgroundColor:Colors.white,
            //),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom:2.0,
                end:2.0,
              ),
              child: CircleAvatar(
                radius:7,
                backgroundColor:Colors.green,
              ),
            ),
          ]
      ),
      SizedBox(width:10.0),
      Expanded(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[

            Text('noha alsalem',
              style:TextStyle(
                fontSize:20.0,
                fontWeight:FontWeight.bold,
              ),),
            SizedBox(height:7.0),
            Row(
              children:[
                Expanded(child: Text('hello my name is noha ahmad alsalem',
                  maxLines:2,
                  overflow:TextOverflow.ellipsis,
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5.0),
                  child: Container(
                    width:10.0,
                    height:10.0,
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      color:Colors.blue,
                    ),
                  ),
                ),
                Text('3:55 pm',),
              ],
            ),

          ],
        ),
      ),
    ],
  );
  Widget buildStoryItme()=> Container(
    width:50.0,
    child: Column(

        children: [
          Stack(
              alignment:AlignmentDirectional.bottomEnd,
              children:[
                CircleAvatar(
                  radius:25,
                  backgroundImage:NetworkImage('https://classicandcoolguitars.co.uk/wp-content/uploads/2018/06/MIJ-flower-precision2.jpg'),
                ),
                //CircleAvatar(
                // radius:8,
                //  backgroundColor:Colors.white,
                //),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom:2.0,
                    end:2.0,
                  ),
                  child: CircleAvatar(
                    radius:7,
                    backgroundColor:Colors.red,
                  ),
                ),
              ]
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Center(
              child:   Text('noha ahmad alali alsalem',

                  maxLines:2,

                  overflow:TextOverflow.ellipsis),
            ),
          ),
        ]
    ),
  );

}
