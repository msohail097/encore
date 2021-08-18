
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';

class CustomCovidTest extends StatefulWidget {


  final String title;
  CustomCovidTest({@required this.title});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<CustomCovidTest> {
  List<bool> _list = [true,false];

  @override
  Widget build(BuildContext context) {

    return   Container(
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
            offset: Offset(
                0, 3), // changes position of shadow
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
                    .spaceBetween,
                crossAxisAlignment: CrossAxisAlignment
                    .center,

                children: [


                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0,0,0),
                    child: Text(widget.title,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight
                                  .w500),
                        )),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0,5,0),
                    child: Stack(

                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0,45,0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _list[0] = true;
                                  _list[1] = false;
                                });

                              },
                              child: Container(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.060,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.14,
                                decoration: BoxDecoration(
                                  color: _list[0] ? AppColors
                                      .kBlue : Colors.white,

                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12)
                                  ),
                                ),

                                child: Center(
                                  child: Text(
                                      'Ja',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight
                                                .w500),
                                      )),
                                ),

                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(45, 0,0,0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _list[1] = true;
                                  _list[0] = false;
                                });
                              },
                              child: Container(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.060,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.14,
                                decoration: BoxDecoration(
                                  color: _list[1] ? AppColors
                                      .kBlue : Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius
                                      .all(
                                      Radius.circular(12)
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                      'Nee',
                                      style: GoogleFonts
                                          .poppins(
                                        textStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight
                                                .w500),
                                      )),
                                ),

                              ),
                            ),
                          )


                        ]),
                  ),


                ]),


          ]),

    );
  }

}