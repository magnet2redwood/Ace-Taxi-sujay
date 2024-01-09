import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/SignUp.dart';
import 'package:flutters/Strings.dart';
import 'package:flutters/ApiStrings.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class RegistrationStatusLayout extends StatefulWidget {
  @override
  _RegistrationStatusLayoutState createState() => _RegistrationStatusLayoutState();
}

class _RegistrationStatusLayoutState extends State<RegistrationStatusLayout> {
  int StepCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        padding: EdgeInsets.fromLTRB(00, 00, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Expanded(
                flex:1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.radio_button_checked,
                          size: 24.0,
                          color: Colors.blueAccent,

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('STEP-1',
                          style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                              fontFamily: 'WorkSans', fontSize: 11, fontWeight: FontWeight.w500) ,),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(Strings.rgDriverDetails,
                          style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                              fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w700) ,),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text('Completed',
                          style: TextStyle(color: Color.fromRGBO(0, 140, 118, 1),
                              fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w600) ,),
                      ),
                    ],

                ),
            ),
            Expanded(
                flex: 1,
                child: Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle366.png'),
                      ),
                      Container(
                        width: 80,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle374.png'),
                      ),
                      ]
                )),
            Expanded(
              flex:1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.radio_button_checked,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('STEP-2',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 11, fontWeight: FontWeight.w500) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(Strings.rgVehicleDetails,
                      style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w700) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Pending',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500) ,),
                  ),
                ],

              ),
            ),
            Expanded(
                flex: 1,
                child: Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle366.png'),
                      ),
                      Container(
                        width: 80,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle374.png'),
                      ),
                    ]
                )),
            Expanded(
              flex:1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.radio_button_checked,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('STEP-3',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 11, fontWeight: FontWeight.w500) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(Strings.rgDocuments,
                      style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w700) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Pending',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500) ,),
                  ),
                ],

              ),
            ),
            Expanded(
                flex: 1,
                child: Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle366.png'),
                      ),
                      Container(
                        width: 80,
                        height: 20,
                        child:  Image.asset('assets/icons/Rectangle374.png'),
                      ),
                    ]
                )),
            Expanded(
              flex:1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.radio_button_checked,
                      size: 24.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('STEP-4',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 11, fontWeight: FontWeight.w500) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(Strings.rgTnC,
                      style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w700) ,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Pendng',
                      style: TextStyle(color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500) ,),
                  ),
                ],

              ),
            ),
          ],
        ),
        ),
      );
  }
}


