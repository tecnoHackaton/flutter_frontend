import 'package:flutter/material.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  State<MainPageScreen> createState() => MainPageScreenState();
}

class MainPageScreenState extends State<MainPageScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          Text('Услуги'),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 100,
                  child: Text('Оплата коммунальных услуг', style: TextStyle(
                    fontSize: 12
                  ),),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/money.png')
                    )
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 100,
                  child: Text('Вызов сантехника', style: TextStyle(
                      fontSize: 12
                  ),),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/waterMan.png')
                      )
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 100,
                  child: Text('Вызов сантехника', style: TextStyle(
                      fontSize: 12
                  ),),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/food.png')
                      )
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 100,
                  child: Text('Вызов сантехника', style: TextStyle(
                      fontSize: 12
                  ),),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/food.png')
                      )
                  ),
                ),
              ),
            ],
          ),
          Text('Информация о ЖК “Династия”'),
          Text('В проекте совмещены новый уровень\n качества жизни и прекрасная архитектура,\n заслуженно признанная классической.\n Архитектурный облик комплекса органично\n и целостно вписался в экстерьер городского центра, дополнив его собственной инфраструктурой. Спроектированный в виде европейского квартала, жилой комплекс «Династия» открывает в Ярославле зону высокого качества жизни.')

        ]
      )
    );
  }
}