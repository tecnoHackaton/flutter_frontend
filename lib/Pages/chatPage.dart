import 'package:flutter/material.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({Key? key}) : super(key: key);

  @override
  State<ChatPageScreen> createState() => ChatPageScreenState();
}

class ChatPageScreenState extends State<ChatPageScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/chat.png"),
    fit: BoxFit.cover,
    ),
    ),
    ),
        ),
    );
  }
}