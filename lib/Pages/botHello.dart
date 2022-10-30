import 'package:flutter/material.dart';

class BotHelloScreen extends StatefulWidget {
  const BotHelloScreen({Key? key}) : super(key: key);

  @override
  State<BotHelloScreen> createState() => BotHelloScreenState();
}

class BotHelloScreenState extends State<BotHelloScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    children: <Widget>[
    Image.asset(
      'assets/vroid.png',
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    ),

      Padding(
        padding: const EdgeInsets.fromLTRB(55, 133, 5, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text("Здравствуйте", style: TextStyle(
            color: Colors.white,
            fontSize: 42
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15,),
          Text("Я Дворецкий\n ваш личный помощник", style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
            textAlign: TextAlign.center,
          )
        ],),
      )
      ]
      )
    );
  }
}