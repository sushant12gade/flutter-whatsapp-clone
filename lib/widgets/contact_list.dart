
import 'package:chat_app/colors.dart';
import 'package:chat_app/info.dart';
import 'package:chat_app/mobile_chatscrreen.dart';
import 'package:chat_app/mobilescreen.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 10),
    child:  
        
        
         ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context,index){
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MobileChatScreen()
                      ),
                      );
                    },
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 16),),
                          
                          
                      //for image at begining use leading ->circleavatr->background image->networkimage->data
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(info[index]['profilePic'].toString(),),
                      ),
                          
                      
                      //time at right corner 
                          
                      trailing: Text(info[index]['time'].toString()),
                    ),
                  ),
                   const Divider( color: dividerColor,indent: 85,),
                ],
              );
            },
          ),
          
        
       
      
    
    );
    
  }
}