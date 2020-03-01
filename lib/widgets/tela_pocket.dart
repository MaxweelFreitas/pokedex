import 'package:flutter/material.dart';

class TelaPocket extends StatefulWidget {
  TelaPocket({
    Key key,
    this.img
  }):super(key:key);
  final Widget img;
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

        ClipPath(
          clipper: Screen (),
          child: Container(
            color: Color(0XFF1E1E1E),
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker01 (),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker02 (),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker03 (),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker04 (),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker05 (),
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        Positioned(
          //alignment: Alignment.center,
          left: size.width*0.429,
          top: size.height*0.075,
          child: CustomPaint(
            painter: BtnSmall01(),
          ),
        ),

        Positioned(
          //alignment: Alignment.center,
          left: size.width*0.504,
          top: size.height*0.075,
          child: CustomPaint(
            painter: BtnSmall02(),
          ),
        ),


        Positioned(
          //alignment: Alignment.center,
          left: size.width*0.245,
          top: size.height*0.365,
          child: CustomPaint(
            painter: BtnBig(),
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
    pathTela.lineTo(size.width * 0.114, size.height*0.154);
    pathTela.lineTo(size.width * 0.114, size.height*0.818);
    pathTela.lineTo(size.width * 0.208, size.height*0.953);
    pathTela.lineTo(size.width * 0.809, size.height*0.953);
    pathTela.quadraticBezierTo(size.width*0.83, size.height*0.944, size.width*0.835, size.height*0.912);
    //arred 0,827 -> 0,83 & 0,941 -> 0,944
    pathTela.lineTo(size.width * 0.835, size.height*0.154);
    pathTela.quadraticBezierTo(size.width*0.83, size.height*0.122, size.width*0.809, size.height*0.113);
    pathTela.lineTo(size.width * 0.140, size.height*0.113);
    pathTela.quadraticBezierTo(size.width*0.119, size.height*0.122, size.width*0.114, size.height*0.154);
    pathTela.close();
    return pathTela;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Screen extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();
    pathScreen.lineTo(size.width * 0.222, size.height*0.283);
    pathScreen.lineTo(size.width * 0.222, size.height*0.720);
    pathScreen.quadraticBezierTo(size.width*0.222, size.height*0.767, size.width*0.255, size.height*0.767);
    pathScreen.lineTo(size.width * 0.695, size.height*0.767);
    pathScreen.quadraticBezierTo(size.width*0.729, size.height*0.767, size.width*0.729, size.height*0.720);
    pathScreen.lineTo(size.width * 0.729, size.height*0.283);
    pathScreen.quadraticBezierTo(size.width*0.729, size.height*0.237, size.width*0.695, size.height*0.237);
    pathScreen.lineTo(size.width * 0.255, size.height*0.237);
    pathScreen.quadraticBezierTo(size.width*0.222, size.height*0.237, size.width*0.222, size.height*0.283);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Speaker01 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();
    pathScreen.lineTo(size.width * 0.645, size.height*0.814);
    pathScreen.lineTo(size.width * 0.727, size.height*0.814);
    pathScreen.quadraticBezierTo(size.width*0.730, size.height*0.810, size.width*0.727, size.height*0.806);
    pathScreen.lineTo(size.width * 0.645, size.height*0.806);
    pathScreen.quadraticBezierTo(size.width*0.642, size.height*0.810, size.width*0.645, size.height*0.814);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Speaker02 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();

    //727 - 645 = 82 comprimento
    //

    //curva aumenta em 3 o X

    pathScreen.lineTo(size.width * 0.645, size.height*0.838);
    pathScreen.lineTo(size.width * 0.727, size.height*0.838);
    pathScreen.quadraticBezierTo(size.width*0.730, size.height*0.834, size.width*0.727, size.height*0.830);
    pathScreen.lineTo(size.width * 0.645, size.height*0.830);
    pathScreen.quadraticBezierTo(size.width*0.642, size.height*0.830, size.width*0.645, size.height*0.838);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Speaker03 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();
    pathScreen.lineTo(size.width * 0.645, size.height*0.862);
    pathScreen.lineTo(size.width * 0.727, size.height*0.862);
    pathScreen.quadraticBezierTo(size.width*0.730, size.height*0.858, size.width*0.727, size.height*0.854);
    pathScreen.lineTo(size.width * 0.645, size.height*0.854);
    pathScreen.quadraticBezierTo(size.width*0.642, size.height*0.854, size.width*0.645, size.height*0.862);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}

class Speaker04 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();
    pathScreen.lineTo(size.width * 0.645, size.height*0.886);
    pathScreen.lineTo(size.width * 0.727, size.height*0.886);
    pathScreen.quadraticBezierTo(size.width*0.730, size.height*0.882, size.width*0.727, size.height*0.878);
    pathScreen.lineTo(size.width * 0.645, size.height*0.878);
    pathScreen.quadraticBezierTo(size.width*0.642, size.height*0.878, size.width*0.645, size.height*0.886);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class Speaker05 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path();
    pathScreen.lineTo(size.width * 0.645, size.height*0.910);
    pathScreen.lineTo(size.width * 0.727, size.height*0.910);
    pathScreen.quadraticBezierTo(size.width*0.730, size.height*0.906, size.width*0.727, size.height*0.902);
    pathScreen.lineTo(size.width * 0.645, size.height*0.902);
    pathScreen.quadraticBezierTo(size.width*0.642, size.height*0.902, size.width*0.645, size.height*0.910);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class BtnSmall01 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Color(0XFFE51D20);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 6.0, paint);
    print(size.height);
    print(size.width);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class BtnSmall02 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Color(0XFFE51D20);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 6.0, paint);
    print(size.height);
    print(size.width);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class BtnBig extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Color(0XFFE51D20);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 10.0, paint);
    print(size.height);
    print(size.width);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}