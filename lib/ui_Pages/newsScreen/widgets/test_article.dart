
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class testArticle extends StatefulWidget {

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<testArticle> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return   Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.12,
      // width: MediaQuery.of(context).size.width*0.80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(

          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0,
                  1), // changes position of shadow
            ),
          ]),
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
                    child: Image(image: AssetImage('assets/1.png'),
                      height: 40,
                      width: 40,),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0,0,0),
                    child: Text('This is Test Article',
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