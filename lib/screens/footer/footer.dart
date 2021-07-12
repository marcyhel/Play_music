import 'package:flutter/material.dart';

class FooterCuston extends StatelessWidget {
  const FooterCuston({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff222222),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.local_fire_department, color: Colors.white24)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.playlist_play, color: Colors.white24)),
        ],
      ),
    );
  }
}
