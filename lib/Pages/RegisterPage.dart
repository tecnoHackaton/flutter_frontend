import 'package:flutter/material.dart';

import '../Classes/logo.dart';
import '../Pages/AuthPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController _loginController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _passwordConfController = new TextEditingController();

  _next(){
    final _login = _loginController.text;
    _loginController.clear();
    final _password = _passwordController.text;
    _passwordController.clear();
    final _passwordConf = _passwordConfController.text;
    _passwordConfController.clear();
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context){
              return AuthPage();
            }
        )
    );
  }

  Widget _input(String hint, TextEditingController controller){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.indigo,
      ),
      child:  TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
    );
  }

  Widget _buttonNext (String text, void func()){
    return ElevatedButton(
      onPressed: (){
        _next();
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

  Widget _form(String label, void func()){
    return Column(
        children: <Widget>[
          Icon(
            Icons.account_circle,
            color: Colors.black,
            size: 35.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: _input('Придумайте логин', _loginController),
          ),
          Icon(
            Icons.lock_outline,
            color: Colors.black,
            size: 35.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: _input('Придумайте пароль', _passwordController),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: _input('Подтвердите пароль', _passwordConfController),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:80),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: _buttonNext(label, _next),
            ),
          )
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
       children: <Widget>[
         Logo(),
         SizedBox(height: 70),
         _form('Продолжить', _next),
      ]
    )

    );
  }
}
