import 'package:flutter/material.dart';

import '../Classes/logo.dart';

class ComplsPage extends StatefulWidget {
  const ComplsPage({Key? key}) : super(key: key);

  @override
  State<ComplsPage> createState() => _ComplsPageState();
}

//Временное решение для отображения
List<String> complexes = [
  ' ЖК не выбран',
  ' ЖК "Династия" ',
  ' ЖК "Сирень" ',
  ' ЖК "Ярсолавль-Сити" ',
  ' ЖК "Сердце Ярославля" ',
  ' ЖК "Стиль Ярославль" ',
  ' ЖК "Янг Фэмэли" ',
  ' ЖК "Новеллы" ',
];

class _ComplsPageState extends State<ComplsPage> {

  String _dropdownValue = complexes[0];


  Widget _buttonNext(String text, void func()){
    return ElevatedButton(
      onPressed: (){
        //Navigator.of(context).push();
      },
      // style: ButtonStyle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Icon(Icons.arrow_circle_right_outlined)
        ],
      ),
    );
  }

  // Widget _logo(){
  //   return Padding(
  //     padding: EdgeInsets.only(top: 140),
  //     child: Container(
  //       //color: Colors.black,
  //       child: Center(
  //         child: const Text(
  //             'dvorets',
  //             style: TextStyle(
  //               fontSize: 70,
  //               fontFamily: 'Arial',
  //               backgroundColor: Colors.black ,
  //               color: Colors.deepPurple,
  //             )
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Logo(),
          SizedBox(height: 100),
            Container
              (
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(25),
              ),
              child: DropdownButton<String>(
                  alignment: AlignmentDirectional(-0.5, 0),
                  icon: Icon(
                      Icons.arrow_circle_down_outlined,
                      color: Colors.black,
                  ),
                  dropdownColor: Colors.indigo,
                  hint: Text('Выберите ЖК'),
                  items: complexes.map((String value){
                    return DropdownMenuItem(
                        value: value,
                        child: Text(value)
                    );
                  }).toList(),
                  onChanged: (String? value){
                    setState(() {
                      _dropdownValue = value!;
                    });
                  },
                value: _dropdownValue,
              ),
            ),
            SizedBox(
              height: 260,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Container(
                child: _buttonNext('Продолжить', () { }),
                height: 60,
              ),
            ),
        ],
      ),
    );
  }
}
