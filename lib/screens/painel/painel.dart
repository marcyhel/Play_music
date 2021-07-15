import 'package:flutter/material.dart';

import 'package:palette_generator/palette_generator.dart';

class Painel extends StatefulWidget {
  const Painel({Key? key}) : super(key: key);

  @override
  _PainelState createState() => _PainelState();
}

class _PainelState extends State<Painel> {
  final imageProvider = NetworkImage("image/0.jpg");

  Future<Color> getImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);
    return paletteGenerator.dominantColor.color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: getImagePalette(imageProvider));
  }
}
