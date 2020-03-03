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

    Color screenColor = Color(0XFF1E1E1E);//Initial color

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
                  light: AppColors.ledClrBlue,
                ),
              ),
              Container(
                height: screen * 0.44,
                child: ScreenPocket(
                  color: screenColor
                ),
              ),
              Container(
                height: screen * 0.30,
                child: BottomPocket(

                  btnSelect: MaterialButton(
                    color: AppColors.btnSelectClrRed,
                    onPressed: () {print('BtnSelect');},
                  ),

                  btnStart: MaterialButton(
                    color: AppColors.btnStartClrBlue,
                    onPressed: () {print('BtnStart');},
                  ),

                  btnBlk: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    color: Colors.black,
                    textColor: Colors.red,
                    onPressed: () {
                      print('BtnBlk');
                    },
                  ),

                  btnGreen: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    color: AppColors.btnClrGreen,
                    onPressed: () {print('BtnGreen');},
                  ),

                  arrowUp: MaterialButton(
                    color: AppColors.directionalClrBlack,//AppColors.btnClrBlack,
                    onPressed: () {print('arrowRight');},
                  ),

                  arrowDown: MaterialButton(
                    color: AppColors.directionalClrBlack,//AppColors.btnClrBlack,
                    onPressed: () {print('arrowRight');},
                  ),

                  arrowLeft: MaterialButton(
                    color: AppColors.directionalClrBlack,//AppColors.btnClrBlack,
                    onPressed: () {print('arrowRight');},
                  ),

                  arrowRight: MaterialButton(
                    color: AppColors.directionalClrBlack,
                    onPressed: () {print('arrowRight');},
                  ),


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
