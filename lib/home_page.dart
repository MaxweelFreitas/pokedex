import 'package:flutter/material.dart';
import 'package:pokedex/widgets/bottom_pocket.dart';
import 'package:pokedex/widgets/tela_pocket.dart';
import 'package:pokedex/widgets/top_pocket.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var statusBarSize = MediaQuery.of(context).padding.top;
    var size = MediaQuery.of(context).size.height;
    var tela = size - statusBarSize;


    return SafeArea(
      child: Container(
        color: Color(0XFF17410F),
        child: Column(
          children: <Widget>[
            Container(
              height: tela * 0.26,
              child: TopPocket(),
            ),
            Container(
              color: Colors.blue,
              height: tela * 0.44,
              child: TelaPocket(),
            ),
            Container(
              color: Colors.yellow,
              height: tela * 0.30,
              child: BottomPocket(),
            ),
          ],
        ),
      ),
    );
  }
}
