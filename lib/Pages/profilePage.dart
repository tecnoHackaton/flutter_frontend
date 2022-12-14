import 'package:flutter/material.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePageScreen> createState() => ProfilePageScreenState();
}

class ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Данила Лебедев',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '@zxcledad',
          style: TextStyle(fontSize: 15),
        ),
        Container(
          margin: EdgeInsets.only(top: 48),
          child: InkWell(
            onTap: () {},
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Редактировать профиль",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 60,
              width: 311,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          child: InkWell(
            onTap: () {},
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Изменить дворецкого",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(80)),
            ),
          ),
        ),
      ],
    ));
  }
}
