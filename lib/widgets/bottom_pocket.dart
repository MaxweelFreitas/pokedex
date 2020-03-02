import 'package:flutter/material.dart';
import 'package:pokedex/consts/app_colors.dart';

class BottomPocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [

        ClipPath(
          clipper: BottomHinge (),
          child: Container(
            color: AppColors.frontClrRed,//Color(0XFFCC1416),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: BottomHingeShadow (),
          child: Container(
            color: AppColors.shadowClrRed,//Color(0XFFA51A17),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: SelectBtn (),
          child: Container(
            color: AppColors.shadowClrRed,//Color(0XFFA51A17),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: StartBtn (),
          child: Container(
            color: AppColors.btnStartClrBlue,//Color(0XFF0F6594),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ArrowShadowX (),
          child: Container(
            color: AppColors.shadowClrRed,//Color(0XFFA51A17),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ArrowShadowY (),
          child: Container(
            color: AppColors.shadowClrRed,//Color(0XFFA51A17),
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ArrowUp (),
          child: Container(
            color: AppColors.directionalClrBlack,
            width: double.infinity,
          ),
        ),

        ClipPath(
          clipper: ArrowDown (),
          child: Container(
            color: AppColors.directionalClrBlack,
            width: double.infinity,
          ),
        ),

        ClipPath(
          clipper: ArrowCenter (),
          child: Container(
            color: AppColors.directionalClrBlack,
            width: double.infinity,

          ),
        ),

        ClipPath(
          clipper: ArrowLeft (),
          child: Container(
            color: AppColors.directionalClrBlack,
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: ArrowRight (),
          child: Container(
            color: AppColors.directionalClrBlack,
            width: double.infinity,
            //color: ,
          ),
        ),

        ClipPath(
          clipper: GreenBtn (),
          child: Container(
            color: AppColors.btnClrGreen,//Color(0XFF49B156),
            width: double.infinity,
            //color: ,
          ),
        ),

        Positioned(
          left: size.width*0.15,
          top: size.height*0.087,
          child: CustomPaint(
            painter: Btn(),
          ),
        ),

      ],
    );
  }
}

class BottomHinge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.91, 0)
    ..lineTo(size.width * 0.91, size.height*0.887)
    ..quadraticBezierTo(size.width*0.91, size.height, size.width*0.957, size.height)
    ..lineTo(size.width, size.height)
    //pathControllers.quadraticBezierTo(size.width, size.height, size.width*0.998, size.height*0.887);
    ..lineTo(size.width, 0);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class BottomHingeShadow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.91, size.height*0.637)
    ..lineTo(size.width * 0.91, size.height*0.665)
    ..lineTo(size.width, size.height*0.665)
    ..lineTo(size.width, size.height*0.637)
    ..lineTo(size.width * 0.91, size.height*0.637);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class SelectBtn extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.272, size.height*0.063)
    ..lineTo(size.width * 0.272, size.height*0.110)
    ..lineTo(size.width * 0.370, size.height*0.110)
    ..lineTo(size.width * 0.370, size.height*0.063)
    ..lineTo(size.width * 0.272, size.height*0.063);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class StartBtn extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    //aumenta x em 179 em todas as width
    ..moveTo(size.width * 0.451, size.height*0.063)
    ..lineTo(size.width * 0.451, size.height*0.110)
    ..lineTo(size.width * 0.549, size.height*0.110)
    ..lineTo(size.width * 0.549, size.height*0.063)
    ..lineTo(size.width * 0.451, size.height*0.063);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowUp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.684, size.height*0.114)
    ..lineTo(size.width * 0.684, size.height*0.318)
    ..lineTo(size.width * 0.774, size.height*0.318)
    ..lineTo(size.width * 0.774, size.height*0.114)
    ..lineTo(size.width * 0.684, size.height*0.114);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowDown extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.684, size.height*0.521)
    ..lineTo(size.width * 0.684, size.height*0.725)
    ..lineTo(size.width * 0.774, size.height*0.725)
    ..lineTo(size.width * 0.774, size.height*0.521)
    ..lineTo(size.width * 0.684, size.height*0.521);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowCenter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    //aumenta x em 181 em todas as width
    //aumenta y em 204 em todas as height
    ..moveTo(size.width * 0.684, size.height*0.317)
    ..lineTo(size.width * 0.684, size.height*0.521)
    ..lineTo(size.width * 0.775, size.height*0.521)
    ..lineTo(size.width * 0.775, size.height*0.317)
    ..lineTo(size.width * 0.684, size.height*0.317);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.594, size.height*0.317)
    ..lineTo(size.width * 0.594, size.height*0.521)
    ..lineTo(size.width * 0.684, size.height*0.521)
    ..lineTo(size.width * 0.684, size.height*0.317)
    ..lineTo(size.width * 0.594, size.height*0.317);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.775, size.height*0.317)
    ..lineTo(size.width * 0.775, size.height*0.521)
    ..lineTo(size.width * 0.865, size.height*0.521)
    ..lineTo(size.width * 0.865, size.height*0.317)
    ..lineTo(size.width * 0.775, size.height*0.317);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowShadowX extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.606, size.height*0.345)
    ..lineTo(size.width * 0.606, size.height*0.549)
    ..lineTo(size.width * 0.877, size.height*0.549)
    ..lineTo(size.width * 0.877, size.height*0.345)
    ..lineTo(size.width * 0.606, size.height*0.345);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ArrowShadowY extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
    ..moveTo(size.width * 0.697, size.height*0.141)
    ..lineTo(size.width * 0.697, size.height*0.752)
    ..lineTo(size.width * 0.787, size.height*0.752)
    ..lineTo(size.width * 0.787, size.height*0.141)
    ..lineTo(size.width * 0.697, size.height*0.141);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class GreenBtn extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path()
      ..moveTo(size.width * 0.265, size.height*0.439)
      ..lineTo(size.width*0.265, size.height*0.540)
      ..quadraticBezierTo(size.width*0.265, size.height*0.635, size.width*0.314, size.height*0.651)
      ..lineTo(size.width*0.478, size.height*0.651)
      ..quadraticBezierTo(size.width*0.527, size.height*0.651, size.width*0.527, size.height*0.540)
      ..lineTo(size.width*0.527, size.height*0.439)
      ..quadraticBezierTo(size.width*0.527, size.height*0.327, size.width*0.478, size.height*0.327)
      ..lineTo(size.width*0.314, size.height*0.327)
      ..quadraticBezierTo(size.width*0.265, size.height*0.327, size.width*0.265, size.height*0.439);
    pathControllers.close();
    return pathControllers;
  }
  @override
  // ignore: missing_return
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class Btn extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.btnClrBlack;//Color(0XFF1E1E1E);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 26.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}