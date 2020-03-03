import 'package:flutter/material.dart';
import 'package:pokedex/consts/app_colors.dart';

class TopPocket extends StatefulWidget {
  TopPocket({
    Key key,
    this.light,
  }):super(key:key);
  final Color light;
  @override
  _TopPocketState createState() => _TopPocketState();
}

class _TopPocketState extends State<TopPocket> {
  @override
  Widget build(BuildContext context) {

    print('object');
    print(widget.light);

    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipPath(
          clipper: TopLayerPocket02 (),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.shadowClrRed,//Color(0XFFA51A17),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),

        ClipPath(
          clipper: TopLayerPocket01 (),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.frontClrRed,//Color(0XFFCC1416),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
            ),
          ),
        ),

        ClipPath(
          clipper: TopLayerPocket03 (),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.shadowClrRed,//Color(0XFFA51A17),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),

        Positioned(
          top: size.height*0.12,
          left: size.width*0.18,
          child: CustomPaint(
              painter: NotifyLayer02(),
          ),
        ),

        Positioned(
          top: size.height*0.12,
          left: size.width*0.18,
          child: CustomPaint(
            painter: NotifyLayer01(
              ledColor: widget.light,
            ),
          ),
        ),

        Positioned(
          top: size.height*0.11,
          left: size.width*0.16,
          child: CustomPaint(
            painter: NotifyLayer00(),
          ),
        ),

        Positioned(
          top: size.height*0.065,
          left: size.width*0.35,
          child: CustomPaint(
            painter: StatusRed(),
          ),
        ),

        Positioned(
          top: size.height*0.065,
          left: size.width*0.42,
          child: CustomPaint(
            painter: StatusYellow(),
          ),
        ),

        Positioned(
          top: size.height*0.065,
          left: size.width*0.49,
          child: CustomPaint(
            painter: StatusGreen(),
          ),
        ),
      ],
    );
  }
}

class TopLayerPocket01 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
    ..lineTo(0, size.height*0.8)
    ..quadraticBezierTo(size.width*0.005, size.height*0.9, size.width*0.06, size.height*0.92)
    ..lineTo(size.width*0.41, size.height*0.92)
    ..lineTo(size.width*0.55, size.height*0.50) //54 50
    ..quadraticBezierTo(size.width*0.58, size.height*0.40, size.width*0.61, size.height*0.40)
    ..lineTo(size.width*0.93, size.height*0.40)
    ..lineTo(size.width*0.91, size.height*0.50)
    ..lineTo(size.width*0.91, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  // ignore: missing_return
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class TopLayerPocket02 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width*0.43, size.height)
    ..lineTo(size.width*0.60, size.height/2)
    ..lineTo(size.width*0.91, size.height/2)
    ..lineTo(size.width*0.91, size.height)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class TopLayerPocket03 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
    ..moveTo(size.width*0.91, size.height*0.79)
    ..lineTo(size.width*0.91, size.height*0.82)
    ..lineTo(size.width, size.height*0.82)
    ..lineTo(size.width, size.height*0.79)
    ..lineTo(size.width*0.91, size.height*0.79);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class NotifyLayer00 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.ledShineClrBlue;//Color(0XFF9CD3F2);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 8.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class NotifyLayer01 extends CustomPainter{
  final Color ledColor;
  NotifyLayer01({this.ledColor});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = ledColor == null ? AppColors.ledClrBlue : ledColor;//ledColor;//Color(0XFF4182C4);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 40.0, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class NotifyLayer02 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.borderLedClrGrey;//Color(0XFFABAAA8);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 50.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class StatusRed extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.ledClrRed;//Color(0XFFE81736);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 8.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class StatusYellow extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.ledClrYellow;//Color(0XFFFFF29A);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 8.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}

class StatusGreen extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = AppColors.ledClrGreen;//Color(0XFF4E9656);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 8.0, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {}
}





