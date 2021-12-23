import 'package:chat_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatNow());
}

class ChatNow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ch@t Now!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red, 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFEF9EB)),
      ),
      home: HomeScreen(),
    );
  }
}