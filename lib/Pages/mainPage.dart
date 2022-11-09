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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 70,
            ),
            Text(
              'Услуги',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 160,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Оплата коммунальных услуг',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/money.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: Container(
                    width: 160,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Вызов сантехника',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/waterMan.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Предложения',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    width: 160,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Заказать еду',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/food.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: Container(
                    width: 160,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Парковка',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/cars.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Информация о ЖК “Династия”',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'В проекте совмещены новый уровень\n качества жизни и прекрасная архитектура,\n заслуженно признанная классической.\n Архитектурный облик комплекса органично\n и целостно вписался в экстерьер городского центра, дополнив его собственной инфраструктурой. Спроектированный в виде европейского квартала, жилой комплекс «Династия» открывает в Ярославле зону высокого качества жизни.',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black26),
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
