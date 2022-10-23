import 'package:flutter/material.dart';

import 'Constantes.dart';

class Cardchild extends StatelessWidget {
  final IconData icon;
  final String text;
  Cardchild({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(text, style: kTextSexStyle),
      ],
    );
  }
}

class Mywidget extends StatelessWidget {
  final Widget? cardchild;
  final Color coleur;
  final void Function()? f;
  Mywidget({required this.coleur, this.cardchild, this.f});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: f,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: coleur,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardchild,
      ),
    );
  }
}
