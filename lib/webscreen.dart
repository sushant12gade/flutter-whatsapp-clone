 
 

import 'package:chat_app/colors.dart';
import 'package:chat_app/web_profile.dart';
import 'package:chat_app/web_search.dart';
import 'package:chat_app/widgets/chat_list.dart';
import 'package:chat_app/widgets/chats_appbar.dart';
import 'package:chat_app/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class webscreen extends StatelessWidget {
  const webscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
              children: [
                  const WebProfile(),
                  const WebSearch(),
                const ContactList(),
              
                //search,
              ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/backgroundImage.png'),
             fit:BoxFit.cover,
             ),
            ),
            child: Column(
               
              children: [
                //chatappbar
                ChatsAppbar(),
                //chatlist
                Expanded(child: ChatList(),

                

                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(

                        color: dividerColor,
                      )
                    ),
                    color: chatBarMessage
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_outlined,color: Colors.grey,)
                      ),
                    Expanded(
                      child: Padding(padding: EdgeInsets.only(
                      left: 10,
                      right: 15,

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: searchBarColor,
                        filled: true,
                        hintText: 'typemessage',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:0,
                        style: BorderStyle.none,)
                      ),
                      contentPadding: EdgeInsets.only(left: 20,)
                    ),
                    
                    ),
                    
                    ),
                    
                    ),
                    IconButton(onPressed: ( ){}, icon: Icon(Icons.mic),
                    )
                    ],
                  ),
                ),

              ],
               
              
            ),
          ),
        ],
      ),
    );
  }
}