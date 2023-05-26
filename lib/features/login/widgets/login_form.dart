import 'package:flutter/material.dart';
import 'widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InputForm(
          obscure: false,
          text: 'Email',
        ),
        InputForm(
          obscure: true,
          text: 'Пароль',
        ),
        SizedBox(height: 1),
        EnterButton(),
      ],
    );
  }
}
