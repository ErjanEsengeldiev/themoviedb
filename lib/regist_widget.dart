import 'package:flutter/material.dart';

//Виджет Регистарции
class RegistWidget extends StatefulWidget {
  const RegistWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistWidget> createState() => _RegistWidgetState();
}

class _RegistWidgetState extends State<RegistWidget> {
  final List<User> listOfUsers = [User(login: 'admin', password: 'admin')];

  final controllerOne = TextEditingController(text: 'admin');
  final controllerTwo = TextEditingController(text: 'admin');

  void _login() {
    setState(() {
      for (var i = 0; i < listOfUsers.length; i++) {
        if (controllerOne.text == listOfUsers[i].login &&
            controllerTwo.text == listOfUsers[i].password) {
          Navigator.of(context).pushReplacementNamed('/menu');
        }
      }
    });
  }

  bool psswodObscureText = true;
  @override
  Widget build(BuildContext context) {
    void viewPassword() {
      setState(() {
        psswodObscureText == true
            ? psswodObscureText = false
            : psswodObscureText = true;
      });
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(53),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pleace Login',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
            const SizedBox(
              height: 20,
            ),
            //Login
            TextField(
              controller: controllerOne,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.teal,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Login',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //Password
            TextField(
              obscureText: psswodObscureText,
              controller: controllerTwo,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                //что бы текст по середине стал
                prefixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.transparent,
                ),
                suffixIcon: InkWell(
                  onTap: viewPassword,
                  child: const Icon(Icons.remove_red_eye),
                ),
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.teal,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Sing in
            ElevatedButton(
              onPressed: _login,
              child: Container(
                alignment: Alignment.center,
                height: 55,
                child: Text('Sing in'),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Класс для создания пользвотелей
class User {
  String login;
  String password;

  User({required this.login, required this.password});
}
