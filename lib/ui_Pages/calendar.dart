

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/models/covid.dart';

import 'contact_us.dart';

class calendarScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<calendarScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:

      SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height * 0.030,),

                         ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                child: Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12)

                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child:
                                  Column
                                    (
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,

                                      children: [

                                        Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,

                                            children: [

                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(15, 0,0,0),
                                                child: Image(image: AssetImage('assets/calendar.png'),
                                                  height: 40,
                                                  width: 40,),
                                              ),


                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(15, 0,0,0),
                                                child: Text('Loren Ispem',
                                                    style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight: FontWeight
                                                              .w500),
                                                    )),
                                              ),




                                            ]),



                                      ]),

                                ),
                              );
                            }),



            SizedBox(height: MediaQuery
                .of(context)
                .size
                .height * 0.050,),


          ],
        ),
      ),
      ),
    );
  }


}
