import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/RegistrationStatusLayout.dart';
import 'package:flutters/SignUp.dart';
import 'package:flutters/Strings.dart';
import 'package:flutters/ApiStrings.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? _selectedGenderValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 126, 245, 1),
        title: Container(
          width: 200,
          child: const Text(Strings.registrationPage,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'WorkSans'),
          ),

        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Open the drawer when the icon is clicked
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        // Drawer content goes here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 click
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 click
              },
            ),
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(23, 30, 0, 0),
                height: 200,
                width: 400,
                child: RegistrationStatusLayout(),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(23, 0, 0, 10),
                width: 400,
                child: Card(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(Strings.rgDriverDetails,
                    style: TextStyle(
                      color: Color.fromRGBO(69, 69, 69, 1),
                      fontSize: 16,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.w700,
                    ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.all(0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //First name
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgFirstName,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgFirstNameHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Last Name
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgLastName,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgLastNameHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Mobile
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgMobile,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgMobileHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Email
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgEmail,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgEmailHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Gender
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgGender,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            width: 350,
                            child:  DropdownButton<String>(
                              value: _selectedGenderValue,
                              hint: Text(Strings.rgGenderHint), // Initial hint text
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGenderValue = newValue;
                                });
                              },
                              items: <String>['Male', 'Female']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                              //SizedBox(height: 16.0),
                              // Text(
                              //   'Selected value: $_selectedValue',
                              //   style: TextStyle(fontSize: 18.0),
                              // ),

                          ),
                          //DOB
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgDOB,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgDOBHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //DL Number
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgDLNumber,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgDLNumberHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Dl Expiry
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgDLExpiry,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgDLExpiryHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Passport
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgPassport,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgPassportHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Working
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgWorking,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgEmailHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //state
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgState,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgStateHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //resident
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgResident,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgResidentHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //postal code
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgPostal,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgPostalHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Address
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgAddress,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgAddressHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),
                          //own taxi board
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgOwnTaxiBoard,
                                    style: TextStyle(
                                        color: Color.fromRGBO(69, 69, 69, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgStar,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                        fontFamily: 'WorkSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                            width: 350,
                            height: 35,
                            child: TextField(
                              onChanged: (text) {
                                //emailText = text; // Update the variable when text changes
                              },
                              decoration: InputDecoration(
                                  hintText: Strings.rgEmailHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),
                          //reset/ next button
                        ],
                      )
                  ),


                ),
              )
            ],
          )
      ),
    );
  }
}