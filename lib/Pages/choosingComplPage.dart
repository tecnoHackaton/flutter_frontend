import 'package:flutter/material.dart';

class ComplsPage extends StatefulWidget {
  const ComplsPage({Key? key}) : super(key: key);

  @override
  State<ComplsPage> createState() => _ComplsPageState();
}

//Временное решение для отображения
List<String> complexes = [
  'ЖК \"Династия\"',
  'ЖК \"Сирень\"',
  'ЖК \"Ярсолавль-Сити\"',
  'ЖК \"Сердце Ярославля\"',
  'ЖК \"Стиль Ярославль\"',
  'ЖК \"Янг Фэмэли\"',
  'ЖК \"Новеллы\"',
];

class _ComplsPageState extends State<ComplsPage> {

  Widget _logo(){
    return Padding(
      padding: EdgeInsets.only(top: 140),
      child: Container(
        //color: Colors.black,
        child: Center(
          child: const Text(
              'dvorets',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Arial',
                backgroundColor: Colors.black ,
                color: Colors.deepPurple,
              )
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          _logo(),
          SizedBox(height: 100),
          DropdownButton(
            items: complexes.map((String value){
              return DropdownMenuItem(
                  value: value,
                  child: Text(value)
              );
            }).toList(),
            onChanged: (_){},
          ),
        ],
      ),
    );
  }
}
