import 'package:flutter/material.dart';

class NewsPageScreen extends StatefulWidget {
  const NewsPageScreen({Key? key}) : super(key: key);

  @override
  State<NewsPageScreen> createState() => NewsPageScreenState();
}

class NewsPageScreenState extends State<NewsPageScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/channels.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}