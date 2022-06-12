import 'package:chat_app/colors.dart';
import 'package:chat_app/mobilescreen.dart';
import 'package:chat_app/responsive_layout.dart';
import 'package:chat_app/webscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const Responsive(webscreen:webscreen(), mobilescreen: mobilescreen()),
    );
  }
}

 