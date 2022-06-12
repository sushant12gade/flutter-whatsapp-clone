import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class WebProfile extends StatelessWidget {
  const WebProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor,),
        ),
        color:  webAppBarColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.comment, color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,),),
            ],
          ),
          

        ],
      ),
    );
  }
}