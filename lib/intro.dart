import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/Login.dart';
import 'package:flutters/SignUp.dart';
import 'package:flutters/Strings.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    appBar: AppBar(
      backgroundColor: const Color.fromRGBO(11, 126, 245, 0.4),
      title: Container(
        width: 200,
        child: const Text(Strings.appName,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromRGBO(0, 50, 119, 1), fontSize: 32,
              fontWeight: FontWeight.w600,
          fontFamily: 'WorkSans'),
        ),

      ),
      centerTitle: true,
    ),
    body: SingleChildScrollView(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
          child: Image.asset('assets/images/intro.JPG'),

        ),
        Container(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(0),
                child: Image.asset('assets/images/image14.png', fit: BoxFit.fill, width: 400,),
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(28, 30, 19, 20),
                        child: Text(Strings.introp1,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1) , fontSize: 28,
                              fontWeight: FontWeight.w700, fontStyle: FontStyle.normal,fontFamily: 'WorkSans'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text(Strings.introp2,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color.fromRGBO(109, 109, 109, 1), fontSize: 16,
                              fontWeight: FontWeight.w600,letterSpacing: 1.12,fontFamily: 'WorkSans'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape: StadiumBorder(),
                            primary: Colors.blueAccent, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Text(Strings.getStarted,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),

                      Container(
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape: StadiumBorder(
                              side: BorderSide(width: 1,color: Colors.blueAccent)

                            ),
                            primary: Colors.white, // background
                            onPrimary: Colors.blueAccent, // foreground
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                          },
                          child: Text(Strings.signUp, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),

                      ),
                      ]

                ),
              ),
            ],
          )
        ),










      ],
    ),
    )

  );
  }
  
}