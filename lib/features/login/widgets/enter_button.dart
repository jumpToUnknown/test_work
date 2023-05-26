import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/users');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).primaryColor,
        ),
        child: const Center(
            child: Text('Войти', style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
