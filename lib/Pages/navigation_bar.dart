import 'package:flutter/material.dart';
import 'package:flutter_frontend/Pages/chatPage.dart';
import 'package:flutter_frontend/Pages/mainPage.dart';
import 'package:flutter_frontend/Pages/mapPage.dart';
import 'package:flutter_frontend/Pages/newsPage.dart';
import 'package:flutter_frontend/Pages/profilePage.dart';
import 'package:flutter_svg/svg.dart';



class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => NavigationBarScreenState();
}

class NavigationBarScreenState extends State<NavigationBarScreen> {

  PageController page = PageController();

  int index = 0;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: page,
              children: [
                MainPageScreen(),
                ChatPageScreen(),
                NewsPageScreen(),
                MapPageScreen(),
                ProfilePageScreen()
              ],),
            Positioned(
                bottom: 22,
                left: 8,
                right: 8,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: (){
                            index = 0;
                            page.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/home.svg', color: index == 0? Color(0xFFFFFFFF): Color(0xFFC5C5C5))),
                      GestureDetector(
                          onTap: (){
                            index = 1;
                            page.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.ease);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/chat.svg', color: index == 1? Color(0xFFFFFFFF): Color(0xFFC5C5C5))),
                      GestureDetector(
                          onTap: (){
                            index = 2;
                            page.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.ease);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/news.svg', color: index == 2? Color(0xFFFFFFFF): Color(0xFFC5C5C5))),
                      GestureDetector(
                          onTap: (){
                            index = 3;
                            page.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.ease);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/map.svg', color: index == 3? Color(0xFFFFFFFF): Color(0xFFCC5C5C5))),
                      GestureDetector(
                          onTap: (){
                            index = 4;
                            page.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.ease);
                            setState(() {

                            });
                          },
                          child: SvgPicture.asset('assets/profile.svg', color: index == 4? Color(0xFFFFFFFF): Color(0xFFC5C5C5))),

                    ],
                  ),
                ))
          ],
        )
    );
  }
}