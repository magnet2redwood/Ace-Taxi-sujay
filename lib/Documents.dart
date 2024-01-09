import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters/SignUp.dart';
import 'package:flutters/Strings.dart';
import 'package:flutters/ApiStrings.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Document extends StatefulWidget {
  @override
  _DocumentState createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  String? _selectedGenderValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                padding: EdgeInsets.fromLTRB(23, 10, 0, 10),
                width: 400,
                child: Card(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(Strings.rgVehicleDetails,
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
                          //Vehicle name
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleName,
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
                                  hintText: Strings.rgVehicleNameHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Vehicle Number
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleNumber,
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
                                  hintText: Strings.rgVehicleNameHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Type of Vehicle
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleType,
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
                                  hintText: Strings.rgVehicleTypeHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Vehicle Model
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleModel,
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
                                  hintText: Strings.rgVehicleModelHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Vehicle Manufacturing Date
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleManufacturing,
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
                              hint: Text(Strings.rgVehicleManufacturingHint), // Initial hint text
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
                          //Age of the Vehicle
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleAge,
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
                                  hintText: Strings.rgVehicleAgeHint,
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
                                  child: const Text(Strings.rgVehicleDLN,
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
                                  hintText: Strings.rgVehicleDLNHint,
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
                                  child: const Text(Strings.rgVehicleDLExpiryDate,
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
                                  hintText: Strings.rgVehicleDLExpiryDateHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Vehicle Engine Number
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleEngine,
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
                                  hintText: Strings.rgVehicleEngineHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Pollution
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehiclePollution,
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
                                  hintText: Strings.rgVehiclePollution,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Vehicle Color
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleColor,
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
                                  hintText: Strings.rgVehicleColor,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //Type of Owner
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleOwner,
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

                          //Type of Taxi Board
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleBoard,
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

                          //Insurance
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleInsurance,
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
                          //Insurance Expiry
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleInsuranceExpiry,
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
                                  hintText: Strings.rgVehicleInsuranceExpiryHint,
                                  hintStyle: TextStyle(
                                      color: Color.fromRGBO(217, 217, 217, 1))
                              ),
                            ),
                          ),

                          //damage
                          Container(
                            padding: EdgeInsets.fromLTRB(23, 10, 00, 00),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(00, 00, 00, 00),
                                  child: const Text(Strings.rgVehicleDamage,
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
                                  hintText: Strings.rgVehicleInsuranceExpiryHint,
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