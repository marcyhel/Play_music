import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:play_music/mobx/img/mob_img.dart';

class Painel extends StatefulWidget {
  final Color cor;
  Painel({
    Key? key,
    required this.cor,
  }) : super(key: key);

  @override
  _PainelState createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  final imageProvider = NetworkImage("image/0.jpg");
  final Mob_Page mob = GetIt.I<Mob_Page>();

  Future<PaletteGenerator> _generatePalette(String imagePath) async {
    PaletteGenerator _paletteGenerator =
        await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
            size: Size(110, 150), maximumColorCount: 20);

    return _paletteGenerator;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.cor,
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage(mob.img),
                  fit: BoxFit.cover,
                ),
              ),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                    //  decoration:
                    //     BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width / 5,
              left: MediaQuery.of(context).size.width / 5,
              top: 50,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  mob.img,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ]),
          Text("Nome da Musica")
        ],
      ),
    );
  }
}
