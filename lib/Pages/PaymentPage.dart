import 'dart:ffi';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

Widget _paymentWindow(String _address, String _name, String _cost, String _month, bool _isCancelled){
  return Center(
    child: Container(
      height: 200,
      width: 340,
      padding: EdgeInsets.only(top:20, left:20, right:50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFFCFCEF),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset.fromDirection(7, 7),
            color: Colors.black
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left:5, top: 5),
                child: Text('$_name', style: TextStyle(fontSize:30)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.place_outlined),
              Text('$_address')
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.money_rounded),
              Text('Квитанция за $_month'),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                      color: (_isCancelled == true
                          ? Colors.green
                          : Colors.red)
                  ),
                  width: 12,
                  height: 12
                ),
              )
            ]
          ),
          Row(
            children:[
              SizedBox(width: 25),
              Text('$_cost Р.')
            ]
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: GestureDetector(
              onTap: (){},
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Оплатить',
                    style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.input)
                ],
              )
            ),
          )
        ],
      )
    ),
  );
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 310, top: 40),
            child: IconButton(
              onPressed: (){},
              iconSize: 40,
              icon: Icon(Icons.arrow_back_sharp),
                  ),
                ),
          SizedBox(height: 10),
          Text(
            'Оплата коммунальных услуг',
            style: TextStyle(fontSize: 25)
          ),
          SizedBox(height: 20),
          _paymentWindow('exampleAddress', 'exampleName', 'exampleCost', 'egMonth', false),
        ],
      ),
    );
  }
}
