import 'package:chat_app/colors.dart';
import 'package:chat_app/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class mobilescreen extends StatelessWidget {
  const mobilescreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length:3,
         child: Scaffold(
           
           appBar: AppBar(
             elevation: 0,
             title: const Text('whatsapp',style: TextStyle(
               color: Colors.grey,
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),),
             centerTitle: false,
             actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.grey,),),
                       IconButton(onPressed: ( ){}, icon:const Icon(Icons.more_vert,color: Colors.grey,),)
             ],
             bottom: const TabBar
             (
               indicatorColor: tabColor,
               indicatorWeight:4,
               labelColor: tabColor,
               unselectedLabelColor: Colors.white,
               tabs:
              [
               
               Tab(text: 'Chats',),
               Tab(text: 'status',),
              Tab(text: 'Calls',),
              

             ]),
           ),
           body: const ContactList(),
           floatingActionButton: FloatingActionButton(onPressed: (){}, 
           backgroundColor: tabColor,
           child: IconButton(onPressed:  (){}, icon: Icon(Icons.message)),),
         )
         ),
      
    );
  }
}