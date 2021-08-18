
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';

class CustomCalendar extends StatefulWidget {


  final String title;
  CustomCalendar({@required this.title});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<CustomCalendar> {

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
                    child: Text(widget.title,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight
                                  .w500),
                        )),
                  ),




                ]),



          ]),

    );


  }

}