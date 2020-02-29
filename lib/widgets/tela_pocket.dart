import 'package:flutter/material.dart';

class TelaPocket extends StatefulWidget {
  @override
  _TelaPocketState createState() => _TelaPocketState();
}

class _TelaPocketState extends State<TelaPocket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Color(0XFFE51D20),
        ),

        ClipPath(
          clipper: Background (),
          child: Container(
            color: Color(0XFFCC1416),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ScreenBorder (),
          child: Container(
            color: Color(0XFFA9A9A9),
            width: double.infinity,
            //color: ,
          ),
        ),
      ],
    );
  }
}

class Background extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path();
    pathTela.lineTo(size.width*0.91, 0);
    pathTela.lineTo(size.width*0.91, size.height);
    pathTela.lineTo(size.width, size.height);
    pathTela.lineTo(size.width, 0);


    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class ScreenBorder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path();
    pathTela.lineTo(size.width * 0.114, size.height*0.1542);
    pathTela.lineTo(size.width*0.114, size.height*0.533);
    pathTela.lineTo(size.width*0.114, size.height*0.924);

    pathTela.lineTo(size.width*0.114, size.height*0.924);

    pathTela.lineTo(size.width*0.82, size.height*0.924);
    pathTela.lineTo(size.width*0.82, size.height*0.2);
    pathTela.lineTo(size.width*0.114, size.height*0.2);

    //pathTela.quadraticBezierTo(size.width*0.80, size.height*0.1, size.width*0.1, size.height*0.73);
    //pathTela.lineTo(size.width*0.110, size.height*0.73);

    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}