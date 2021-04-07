import 'package:flutter/material.dart';

//StartPage : Apptitle과 start botton이 있다.

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            'assets/background1.jpg',
            fit:BoxFit.fill,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: AspectRatio(
              aspectRatio: 18/5,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [ //riasedbutton은 그림자 위치 변경이 힘든것 같다.
                      BoxShadow(
                        offset: Offset(2,0),
                        color: Colors.black,
                        blurRadius: 100.0,
                      ),
                    ]
                ),
                child: FlatButton(
                  minWidth: MediaQuery.of(context).size.width ,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Colors.black,
                  onPressed:(){
                    Navigator.pop(context);
                  },
                  child: Text(
                    'start study',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}