import 'package:flutter/material.dart';
import 'package:pokedex/consts/app_colors.dart';

class ScreenPocket extends StatefulWidget {
  ScreenPocket({
    Key key,
    this.img,
    this.color,
  }):super(key:key);
  final Widget img;
  final Color color;
  @override
  _ScreenPocketState createState() => _ScreenPocketState();
}

class _ScreenPocketState extends State<ScreenPocket> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.bgClrRed,//Color(0XFFE51D20),
        ),

        ClipPath(
          clipper: Background (),
          child: Container(
            color: AppColors.frontClrRed,//Color(0XFFCC1416),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ScreenBorder (),
          child: Container(
            color: AppColors.scrBorderClrGrey,//Color(0XFFA9A9A9),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Screen (),
          child: Container(
            color: widget.color,
            width: double.infinity,
            child: widget.img,
          ),
        ),

        ClipPath(
          clipper: Speaker01 (),
          child: Container(
            color: AppColors.speakerClrBlack,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker02 (),
          child: Container(
            color: AppColors.speakerClrBlack,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker03 (),
          child: Container(
            color: AppColors.speakerClrBlack,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker04 (),
          child: Container(
            color: AppColors.speakerClrBlack,
            width: double.infinity,
            child: widget.img,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: Speaker05 (),
          child: Container(
            color: AppColors.speakerClrBlack,
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

//        Align(
//          alignment: Alignment.center,
//          child: Container(
//            color: Colors.pink,
//            height: size.height*0.1,
//            width: size.width*0.5,
//
//          ),
//        ),

      ],
    );
  }
}

class Background extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path()
    ..moveTo(size.width*0.91, 0)
    ..lineTo(size.width*0.91, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0);
    pathTela.close();
    return pathTela;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ScreenBorder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathTela = Path()
    ..moveTo(size.width * 0.114, size.height*0.154)
    ..lineTo(size.width * 0.114, size.height*0.818)
    ..lineTo(size.width * 0.208, size.height*0.953)
    ..lineTo(size.width * 0.809, size.height*0.953)
    ..quadraticBezierTo(size.width*0.83, size.height*0.944, size.width*0.835, size.height*0.912)
    ..lineTo(size.width * 0.835, size.height*0.154)
    ..quadraticBezierTo(size.width*0.83, size.height*0.122, size.width*0.809, size.height*0.113)
    ..lineTo(size.width * 0.140, size.height*0.113)
    ..quadraticBezierTo(size.width*0.119, size.height*0.122, size.width*0.114, size.height*0.154);
    pathTela.close();
    return pathTela;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Screen extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.222, size.height*0.283)
    ..lineTo(size.width * 0.222, size.height*0.720)
    ..quadraticBezierTo(size.width*0.222, size.height*0.767, size.width*0.255, size.height*0.767)
    ..lineTo(size.width * 0.695, size.height*0.767)
    ..quadraticBezierTo(size.width*0.729, size.height*0.767, size.width*0.729, size.height*0.720)
    ..lineTo(size.width * 0.729, size.height*0.283)
    ..quadraticBezierTo(size.width*0.729, size.height*0.237, size.width*0.695, size.height*0.237)
    ..lineTo(size.width * 0.255, size.height*0.237)
    ..quadraticBezierTo(size.width*0.222, size.height*0.237, size.width*0.222, size.height*0.283);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Speaker01 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.645, size.height*0.814)
    ..lineTo(size.width * 0.727, size.height*0.814)
    ..quadraticBezierTo(size.width*0.730, size.height*0.810, size.width*0.727, size.height*0.806)
    ..lineTo(size.width * 0.645, size.height*0.806)
    ..quadraticBezierTo(size.width*0.642, size.height*0.810, size.width*0.645, size.height*0.814);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Speaker02 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.645, size.height*0.838)
    ..lineTo(size.width * 0.727, size.height*0.838)
    ..quadraticBezierTo(size.width*0.730, size.height*0.834, size.width*0.727, size.height*0.830)
    ..lineTo(size.width * 0.645, size.height*0.830)
    ..quadraticBezierTo(size.width*0.642, size.height*0.830, size.width*0.645, size.height*0.838);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Speaker03 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.645, size.height*0.862)
    ..lineTo(size.width * 0.727, size.height*0.862)
    ..quadraticBezierTo(size.width*0.730, size.height*0.858, size.width*0.727, size.height*0.854)
    ..lineTo(size.width * 0.645, size.height*0.854)
    ..quadraticBezierTo(size.width*0.642, size.height*0.854, size.width*0.645, size.height*0.862);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }

}

class Speaker04 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.645, size.height*0.886)
    ..lineTo(size.width * 0.727, size.height*0.886)
    ..quadraticBezierTo(size.width*0.730, size.height*0.882, size.width*0.727, size.height*0.878)
    ..lineTo(size.width * 0.645, size.height*0.878)
    ..quadraticBezierTo(size.width*0.642, size.height*0.878, size.width*0.645, size.height*0.886);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Speaker05 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
    ..moveTo(size.width * 0.645, size.height*0.910)
    ..lineTo(size.width * 0.727, size.height*0.910)
    ..quadraticBezierTo(size.width*0.730, size.height*0.906, size.width*0.727, size.height*0.902)
    ..lineTo(size.width * 0.645, size.height*0.902)
    ..quadraticBezierTo(size.width*0.642, size.height*0.902, size.width*0.645, size.height*0.910);
    pathScreen.close();
    return pathScreen;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class BtnSmall01 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.bgClrRed;//Color(0XFFE51D20);
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
    paint.color = AppColors.bgClrRed;//Color(0XFFE51D20);
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
    paint.color = AppColors.bgClrRed;//Color(0XFFE51D20);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 10.0, paint);
    print(size.height);
    print(size.width);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}