import 'package:flutter/material.dart';

class ButtonsCuston extends StatelessWidget {
  ButtonsCuston(this.funcao, this.icon);
  Function funcao;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        funcao();
      },
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
