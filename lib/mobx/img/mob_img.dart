import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:palette_generator/palette_generator.dart';

part 'mob_img.g.dart';

class Mob_Page = _Mob_Page with _$Mob_Page;

abstract class _Mob_Page with Store {
  _Mob_Page() {
    _generatePalette(img);
  }
  @observable
  String img = 'image/3.jpg';
  @observable
  int tuto = 1;
  @observable
  int data = 1;
  @observable
  Color cor = Colors.amber;
  @observable
  List<String> titulo = [
    'Dados',
    'Grafico',
    'Tabela',
  ];

  @action
  Future<PaletteGenerator> _generatePalette(String imagePath) async {
    PaletteGenerator _paletteGenerator =
        await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
            size: Size(110, 150), maximumColorCount: 20);
    cor = _paletteGenerator.dominantColor!.color;
    return _paletteGenerator;
  }

  @action
  void setData(int valor) => data = valor;
  @action
  void settuto(int valor) => tuto = valor;
}
