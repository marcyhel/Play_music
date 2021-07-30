import 'package:flutter/material.dart';
import 'package:play_music/screens/home/componentes/card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    return Container(
      color: Color(0xff111111),
      child: NotificationListener<ScrollNotification>(
          onNotification: (v) {
            if (v is ScrollUpdateNotification) {
              if (v.metrics.pixels <= 1) {
                print("inicio");
              }
            }

            return false;
          },
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, top: 18, bottom: 3),
                child: Text(
                  "Seus favoritos",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 250,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(width: 10),
                  CardsCustom(
                      img: "image/0.jpg",
                      nome: "Nome asdadf wafasd adfa dfas dfa f adef",
                      descricao: "Descricao"),
                  CardsCustom(
                      img: "image/1.jpg", nome: "Nome", descricao: "descricao"),
                  CardsCustom(
                      img: "image/12.jpg",
                      nome: "Nome",
                      descricao: "descricao"),
                  CardsCustom(
                      img: "image/0.jpg", nome: "Nome", descricao: "descricao"),
                  CardsCustom(
                      img: "image/3.jpg", nome: "nome", descricao: "descricao"),
                  SizedBox(width: 10),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 18, bottom: 3),
                child: Text(
                  "Ouvir novamente",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 250,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(width: 10),
                  CardsCustom(
                      img: "image/10.jpg",
                      nome: "Nome asdadf wafasd adfa dfas dfa f adef",
                      descricao: "Descricao"),
                  CardsCustom(
                      img: "image/6.jpg", nome: "Nome", descricao: "descricao"),
                  CardsCustom(
                      img: "image/8.jpg", nome: "Nome", descricao: "descricao"),
                  CardsCustom(
                      img: "image/7.jpg", nome: "Nome", descricao: "descricao"),
                  CardsCustom(
                      img: "image/9.jpg", nome: "nome", descricao: "descricao"),
                  SizedBox(width: 10),
                ]),
              ),
            ],
          )),
    );
  }
}
