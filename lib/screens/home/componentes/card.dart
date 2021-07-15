import 'package:flutter/material.dart';

class CardsCustom extends StatelessWidget {
  String img;
  String nome;
  String descricao;
  CardsCustom({
    Key? key,
    required this.img,
    required this.nome,
    required this.descricao,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(img, fit: BoxFit.cover)),
          ),
          Text(
            nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            descricao,
            style: TextStyle(
              color: Colors.white60,
            ),
          )
        ],
      ),
    );
  }
}
