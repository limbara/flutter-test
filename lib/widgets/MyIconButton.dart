import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;

  MyIconButton({
    this.onPressed,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: this.onPressed,
      child: icon,
    );
  }

}