import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.obscure,
    required this.text,
  });

  final bool obscure;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: obscure,
      decoration: InputDecoration(
          label: Text(text),
          labelStyle: const TextStyle(
              color: Color(0xff999999),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Display'),
          floatingLabelStyle: const TextStyle(
            color: Color(0xff9b51e0),
          ),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffd8d8d8))),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffd8d8d8)))),
    );
  }
}
