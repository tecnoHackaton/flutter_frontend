import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //Лого лучше будет сделать ассетом, пока такая заглушка
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

    void _next(){
      final _firstName = _firstNameController.text;
      _firstNameController.clear();
      final _lastName = _lastNameController.text;
      _lastNameController.clear();
      final _email = _emailController.text;
      _emailController.clear();
    }

    Widget _buttonNext(String text, void func()){
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
              child: _input('Введите имя', _firstNameController),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: _input('Введите фамилию', _lastNameController),
            ),
            Icon(
              Icons.email,
              color: Colors.black,
              size: 35.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: _input('Введите почту', _emailController),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: _buttonNext(label, _next),
              ),
            )
          ]
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          _logo(),
          SizedBox(height: 70,),
          _form('Продолжить,,', _next),
          // _lastName()
        ],
      ),
    );
  }
}

