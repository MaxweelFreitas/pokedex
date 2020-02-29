import 'package:flutter/material.dart';

class BottomPocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          //color: Color(0XFFE51D20),
        color: Colors.yellow,
          borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0),
          )
      ),
    );
  }
}
