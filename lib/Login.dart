import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/RegistrationStatusLayout.dart';
import 'package:flutters/SignUp.dart';
import 'package:flutters/Registration.dart';
import 'package:flutters/Strings.dart';
import 'package:flutters/ApiStrings.dart';
import 'package:flutters/Vehicle.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String emailText = '';
  String passwordText = '';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: true,
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
          child:  Container(
            color: Color.fromRGBO(11, 126, 245, 0.2),
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                  child: Image.asset('assets/images/login.png'),

                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -35.0, 00.0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: EdgeInsets.all(0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 00, 00, 00),
                        child: Image.asset('assets/images/curveBox.png',
                          width: 400,
                          fit: BoxFit.fill,

                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width:400,
                              padding: EdgeInsets.fromLTRB(60, 40, 40, 0),
                              child: const Text(Strings.login,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color.fromRGBO(11, 126, 245, 1),
                                    fontFamily: 'WorkSans', fontSize: 24, fontWeight: FontWeight.w600),),
                            ),

                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(24, 40, 40, 0),
                              child: const Text(Strings.email,
                                style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                    fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500),),
                            ),
                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:<Widget> [
                                  Expanded(
                                    flex:1,
                                    child: Image.asset('assets/icons/mail.png'),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      onChanged: (text) {
                                        emailText = text; // Update the variable when text changes
                                      },
                                      decoration: InputDecoration(
                                          hintText: Strings.emailHint,
                                          hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1))
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(24, 40, 40, 0),
                              child: const Text(Strings.password,
                                style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                    fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500),),
                            ),
                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:<Widget> [
                                  Expanded(
                                    flex:1,
                                    child: Image.asset('assets/icons/encrypted.png'),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      onChanged: (text) {
                                        passwordText = text; // Update the variable when text changes
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: Strings.passwordHint,
                                          hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1))
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:<Widget> [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Checkbox(
                                        value: isChecked,
                                        onChanged: (value){
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        }),
                                  ),
                                  Text(Strings.checkBoxText,
                                    style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500) ,),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              width: 300,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  shape: StadiumBorder(),
                                  primary: Colors.blueAccent, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  if(emailText.isNotEmpty && passwordText.isNotEmpty && isChecked== true){
                                    fetchDataWithParameters(emailText, passwordText);
                                  }else{
                                    print("checkbox not clicked");
                                  }
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                },
                                child: Text(Strings.login,
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Container(
                              width: 400,
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:<Widget> [
                                  Expanded(
                                      flex:3,
                                      child: Text(Strings.forgotPassword,
                                        style: TextStyle(color: Color.fromRGBO(11, 126, 245, 1),
                                            fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500) ,)
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Text('Dont have account',
                                        style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                            fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500) ,)
                                  ),
                                  Expanded(
                                      flex:2,
                                      child: TextButton(
                                        onPressed: () {
                                          print("signup pressed");
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()));
                                        },
                                        child: Text('Signup',
                                          style: TextStyle(color: Color.fromRGBO(11, 126, 245, 1),
                                              fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500) ,),
                                      )
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }

  Future<void> fetchDataWithParameters(String emailT, String passT) async {
    //final String baseUrl = '172.16.116.221:8080';
    //final String endpoint = '/acetaxi/driver/login';// Replace with your API URL
    final Map<String, String> parameters = {
      'email': emailT,
      'password': passT,

    };
    final Uri uri = Uri.http(ApiStrings.baseUrl, ApiStrings.endpiont_login, parameters);

    final response = await http.get(uri);
    //final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data.
      final data = json.decode(response.body);
      // Process the data here.
      print(response.statusCode);
      print(data);
      //Fluttertoast.showToast(msg: data);
    } else {
      // If the server did not return a 200 OK response, throw an exception or handle the error accordingly.
      print(response.statusCode);
      //Fluttertoast.showToast(msg: response.statusCode.toString());
    }
  }

}
