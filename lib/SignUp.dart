import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/Strings.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                transform: Matrix4.translationValues(0, -20, 0),
                padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                child: Image.asset('assets/images/login.png'),

              ),
              Container(
                transform: Matrix4.translationValues(0.0, -120.0, 00.0),
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
                            child: const Text(Strings.signUp,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color.fromRGBO(11, 126, 245, 1),
                                  fontFamily: 'WorkSans', fontSize: 24, fontWeight: FontWeight.w600),),
                          ),

                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(24, 0, 40, 0),
                            child: const Text(Strings.fullName,
                              style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                  fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500),),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                    decoration: InputDecoration(
                                        hintText: Strings.fullNameHint,
                                        hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),
                                        fontWeight: FontWeight.w500, fontSize: 14,
                                        fontFamily: 'WorkSans')
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(24, 10, 40, 0),
                            child: const Text(Strings.mobile,
                              style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                  fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500),),
                          ),
                          Container(
                            width: 400,
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget> [
                                Expanded(
                                  flex:1,
                                  child: Image.asset('assets/icons/call.png'),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: Strings.mobileHint,
                                        hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),
                                            fontWeight: FontWeight.w500, fontSize: 14,
                                            fontFamily: 'WorkSans')
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(24, 10, 40, 0),
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
                                    decoration: InputDecoration(
                                        hintText: Strings.emailHint2,
                                        hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),
                                            fontWeight: FontWeight.w500, fontSize: 14,
                                            fontFamily: 'WorkSans')
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(24, 10, 40, 0),
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
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: Strings.passwordHint,
                                        hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),
                                            fontWeight: FontWeight.w500, fontSize: 14,
                                            fontFamily: 'WorkSans')
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(24, 10, 40, 0),
                            child: const Text(Strings.password2,
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
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: Strings.password2Hint,
                                        hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),
                                            fontWeight: FontWeight.w500, fontSize: 14,
                                            fontFamily: 'WorkSans')
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 400,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget> [
                                Expanded(
                                  flex:1,
                                  child: Image.asset('assets/icons/check_box_outline_blank.png'),
                                ),
                                Expanded(
                                    flex: 9,
                                    child: Text(Strings.checkBoxText,
                                      style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                          fontFamily: 'WorkSans', fontSize: 12, fontWeight: FontWeight.w500) ,)
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                shape: StadiumBorder(),
                                primary: Colors.blueAccent, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                              },
                              child: Text(Strings.createAccount,
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Container(
                            width: 400,
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const Text(Strings.allreadyAccount,
                              style: TextStyle(color: Color.fromRGBO(69, 69, 69, 1),
                                  fontFamily: 'WorkSans', fontSize: 13, fontWeight: FontWeight.w500),),
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
}