import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/consts/app_colors.dart';
import 'package:pokedex/widgets/bottom_pocket.dart';
import 'package:pokedex/widgets/screen_pocket.dart';
import 'package:pokedex/widgets/top_pocket.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        //statusBar
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        //NavigationBar
        systemNavigationBarColor: Colors.white, //bottom bar color
        systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
      ));

    var statusBarSize = MediaQuery.of(context).padding.top;
    var size = MediaQuery.of(context).size.height;
    var screen = size - statusBarSize;

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.bgClrRed,//Color(0XFFE51D20),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: screen * 0.26,
                child: TopPocket(

                ),
              ),
              Container(
                //color: Colors.blue,
                height: screen * 0.44,
                child: ScreenPocket(
                  color: Color(0XFF1E1E1E) //Initial color

                ),
              ),
              Container(
                //color: Colors.yellow,
                height: screen * 0.30,
                child: BottomPocket(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
