import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:play_music/screens/base.dart';

import 'mobx/img/mob_img.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  singletonsApp();
  runApp(const MyApp());
}

void singletonsApp() {
  GetIt.I.registerSingleton(Mob_Page());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Basic(),
    );
  }
}
