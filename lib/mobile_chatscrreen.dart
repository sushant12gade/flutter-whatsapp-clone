import 'package:chat_app/colors.dart';
import 'package:chat_app/info.dart';
import 'package:chat_app/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: ( ){}, icon:Icon(Icons.video_call),
          
          ),
            IconButton(onPressed: ( ){}, icon:Icon(Icons.call),
          
          ),

            IconButton(onPressed: ( ){}, icon:Icon(Icons.more_vert)
          
          ),
        ],
        
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()

          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(filled: true,
                  
                  fillColor: mobileChatBoxColor,
                  prefixIcon: const Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: (
                    
                  Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)
                  
                  ),
                  
                  
                  ),
                 hintText: 'type message',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(width:0,
                              style: BorderStyle.none,)
                            ),
                            contentPadding: const EdgeInsets.only(left: 20,)
                  ),
                ),
              ),
               Row(
            children: [
              IconButton(onPressed:  (){}, icon: Icon(Icons.send,color: tabColor,),
          ),
          IconButton(onPressed:  (){}, icon: Icon(Icons.mic,color: Colors.blueGrey,),
          ),
            ],
          ),
         
            ],
          )
        
        
        ],
      ),
    );
  }
}