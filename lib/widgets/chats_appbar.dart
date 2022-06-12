import 'package:chat_app/colors.dart';
import 'package:chat_app/info.dart';
import 'package:flutter/material.dart';


class ChatsAppbar extends StatelessWidget {
  const ChatsAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor,),
        ),
        color:  webAppBarColor
      ),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          ),
          Text(info[0]['name'].toString()),
        
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.link),),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),],
            

        )
        ],
        
      ),
      
    );
  }
}