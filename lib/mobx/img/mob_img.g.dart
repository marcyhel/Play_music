// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mob_img.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Mob_Page on _Mob_Page, Store {
  final _$imgAtom = Atom(name: '_Mob_Page.img');

  @override
  String get img {
    _$imgAtom.reportRead();
    return super.img;
  }

  @override
  set img(String value) {
    _$imgAtom.reportWrite(value, super.img, () {
      super.img = value;
    });
  }

  final _$tutoAtom = Atom(name: '_Mob_Page.tuto');

  @override
  int get tuto {
    _$tutoAtom.reportRead();
    return super.tuto;
  }

  @override
  set tuto(int value) {
    _$tutoAtom.reportWrite(value, super.tuto, () {
      super.tuto = value;
    });
  }

  final _$dataAtom = Atom(name: '_Mob_Page.data');

  @override
  int get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(int value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$corAtom = Atom(name: '_Mob_Page.cor');

  @override
  Color get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(Color value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  final _$tituloAtom = Atom(name: '_Mob_Page.titulo');

  @override
  List<String> get titulo {
    _$tituloAtom.reportRead();
    return super.titulo;
  }

  @override
  set titulo(List<String> value) {
    _$tituloAtom.reportWrite(value, super.titulo, () {
      super.titulo = value;
    });
  }

  final _$_generatePaletteAsyncAction =
      AsyncAction('_Mob_Page._generatePalette');

  @override
  Future<PaletteGenerator> _generatePalette(String imagePath) {
    return _$_generatePaletteAsyncAction
        .run(() => super._generatePalette(imagePath));
  }

  final _$_Mob_PageActionController = ActionController(name: '_Mob_Page');

  @override
  void setData(int valor) {
    final _$actionInfo =
        _$_Mob_PageActionController.startAction(name: '_Mob_Page.setData');
    try {
      return super.setData(valor);
    } finally {
      _$_Mob_PageActionController.endAction(_$actionInfo);
    }
  }

  @override
  void settuto(int valor) {
    final _$actionInfo =
        _$_Mob_PageActionController.startAction(name: '_Mob_Page.settuto');
    try {
      return super.settuto(valor);
    } finally {
      _$_Mob_PageActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
img: ${img},
tuto: ${tuto},
data: ${data},
cor: ${cor},
titulo: ${titulo}
    ''';
  }
}
