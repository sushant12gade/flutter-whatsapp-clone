import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.25,
       padding: const EdgeInsets.all(15),
       decoration: const BoxDecoration(
         border: Border(bottom: BorderSide(color:dividerColor),
       ),
    
       
       ),
       child: TextField(
         decoration:InputDecoration(
           filled: true,
           fillColor: searchBarColor,
           prefixIcon:  const Padding(padding: EdgeInsets.symmetric(horizontal: 20,),),
           hintStyle: const TextStyle(fontSize: 14),
           hintText: 'search or start typing',
           border: OutlineInputBorder(borderRadius:BorderRadius.circular(25),
           borderSide: BorderSide(width: 0,style: BorderStyle.none)
           ),
           contentPadding: EdgeInsets.all(10),
         ),
       ),
    );
  }
}