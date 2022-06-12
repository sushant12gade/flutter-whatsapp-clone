import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget webscreen;
  final Widget mobilescreen;
  const Responsive({ Key? key, required this.webscreen, required this.mobilescreen }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
  builder: (context, constraints) {
    if(constraints.maxWidth>900){
      return webscreen;
    }
    return mobilescreen;
  }
  );
    
  }
}