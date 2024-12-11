import 'package:flutter/material.dart';
import 'package:astana_kitap/constants.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment(0, 0),
                children: [
                  Container(
                    child: Center(
                      child: Arc(
                          height: 60,
                          edge: Edge.BOTTOM,
                          child: Container(
                            height: 180,
                            color: blueColor,
                            width: MediaQuery.of(context).size.width,
                          )),
                    ),
                  ),
                  const Text("РЕГИСТРАЦИЯ",
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                ],
              ),
            ),
            const Expanded(
              child: const Column(
                children: [
                  const InputField(
                    label: Text("Имя...", style: TextStyle(fontSize: 12),),
                    hintText: "Введите имя...",
                  ),
                  const InputField(
                    label: Text("Фамилия...", style: TextStyle(fontSize: 12),),
                    hintText: "Введите фамилию...",
                  ),
                  const InputField(
                    label: Text("Электронная почта..." , style: TextStyle(fontSize: 12),),
                    hintText: "Введите email...",
                  ),
                  const InputField(
                    label: Text("+7 | Номер телефона...", style: TextStyle(fontSize: 12),),
                    hintText: "Введите номер телефона...",
                  ),
                  const InputField(
                    label: Text("Создайте пароль...", style: TextStyle(fontSize: 12),),
                    hintText: "Создайте пароль...",
                  ),
                  const InputField(
                    label: Text("Повторите пароль...", style: TextStyle(fontSize: 12),),
                    hintText: "Повторите пароль...",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: blueColor,
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'home_page');
                      },
                      child: const Text(
                        "Зарегистрироваться",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      )),
                  Text(
                    "У вас уже есть аккаунт?",
                    style: TextStyle(color: blueColor),
                  ),
                  Text(
                    "Войти",
                    style: TextStyle(color: blueColor),
                  ),
                  const SizedBox(
                    width: double.infinity,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({super.key, required this.hintText, required this.label});

  final Text? label;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
              label: label,
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}