import 'package:flutter/material.dart';

class BottomPocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
              //color: Color(0XFFE51D20),
              color: Color(0XFFE51D20),
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              )
          ),
        ),

//        ClipPath(
//          clipper: BottomHinge (),
//          child: Container(
//            color: Color(0XFFCC1416),
//            width: double.infinity,
//            //color: ,
//          ),
//        ),


      ],
    );
  }
}

class BottomHinge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathControllers = Path();
    pathControllers.lineTo(size.width * 0.114, size.height*0.154);
    pathControllers.lineTo(size.width * 0.914, size.height*0.901);

    //pathControllers.quadraticBezierTo(size.width*0.119, size.height*0.122, size.width*0.114, size.height*0.154);
    pathControllers.close();
    return pathControllers;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}