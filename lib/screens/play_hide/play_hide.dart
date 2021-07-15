import 'package:flutter/material.dart';

import 'componentes/button.dart';

class Play_Hide extends StatelessWidget {
  const Play_Hide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      color: Color(0xff222222),
      child: Center(
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.purple.shade900,
            height: 45,
            width: 45,
            child: Image.asset("image/6.jpg"),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nome da musica",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Artista / album",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          ButtonsCuston(() {
            print("d");
          }, Icons.skip_previous),
          ButtonsCuston(() {
            print("a");
          }, Icons.play_arrow),
          ButtonsCuston(() {
            print("b");
          }, Icons.skip_next),
          Spacer(
            flex: 1,
          ),
        ]),
      ),
    );
  }
}
