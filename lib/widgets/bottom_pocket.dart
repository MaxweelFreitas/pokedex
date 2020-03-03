import 'package:flutter/material.dart';
import 'package:pokedex/consts/app_colors.dart';

class BottomPocket extends StatefulWidget {
  final Widget btnBlk;
  final Widget btnGreen;
  final Widget btnSelect;
  final Widget btnStart;
  final Widget arrowUp;
  final Widget arrowDown;
  final Widget arrowLeft;
  final Widget arrowRight;
  BottomPocket({
    Key key,
    this.btnBlk,
    this.btnGreen,
    this.btnSelect,
    this.btnStart,
    this.arrowUp,
    this.arrowDown,
    this.arrowLeft,
    this.arrowRight,
  }):super(key:key);

  @override
  _BottomPocketState createState() => _BottomPocketState();
}

class _BottomPocketState extends State<BottomPocket> {
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

        Positioned(
          left: size.width*0.684,
          top: size.height*0.033,
          child: Container(
            height: size.width*0.1,
            width: size.width*0.09,
            child: widget.arrowUp,
          ),
        ),

        Positioned(
          left: size.width*0.684,
          top: size.height*0.150,
          child: Container(
            height: size.width*0.1,
            width: size.width*0.09,
            child: widget.arrowDown,
          ),
        ),

        Positioned(
          left: size.width*0.585,
          top: size.height*0.091,
          child: Container(
            height: size.width*0.1,
            width: size.width*0.1,
            child: widget.arrowLeft,
          ),
        ),

        Positioned(
          left: size.width*0.774,
          top: size.height*0.091,
          child: Container(
            height: size.width*0.1,
            width: size.width*0.1,
            child: widget.arrowRight,
          ),
        ),

        Positioned(
          left: size.width*0.265,
          top: size.height*0.095,
          child: Container(
            height: size.width*0.155,
            width: size.width*0.264,
            child: widget.btnGreen,
          ),
        ),

        Positioned(
          left: size.width*0.27,
          top: size.height*0.018,
          child: Container(
            height: size.width*0.025,
            width: size.width*0.10,
            child: widget.btnSelect,
          ),
        ),

        Positioned(
          left: size.width*0.45,
          top: size.height*0.018,
          child: Container(
            height: size.width*0.025,
            width: size.width*0.10,
            child: widget.btnStart,
          ),
        ),

        Positioned(
          left: size.width*0.0855,
          top: size.height*0.0475,
          child: Container(
            height: size.width*0.13,
            width: size.width*0.13,
            child: widget.btnBlk,
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