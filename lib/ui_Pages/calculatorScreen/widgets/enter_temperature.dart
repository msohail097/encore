
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';

class enterTemperature extends StatefulWidget {

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<enterTemperature> {

  TextEditingController tempController = TextEditingController();
  List<bool> _list = [true,false];

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.10,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.90,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.kBlue,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(12)
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.075,
            width: MediaQuery.of(context).size.width*0.40,


            child: InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0, 0, 0),
                child: TextField(
                  controller: tempController,
                  style: TextStyle(
                      fontSize: 18.0,
                      height: 1.5,
                      color: AppColors.kBlue                              ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Temp',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],

                    ),


                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,

                  ], // Only numbers can be entered
                ),
              ),
            ),
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

                        });
                        _list[0] = true;
                        _list[1] = false;
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
                              'C',
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
                              'F',
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





        ],
      ),

    );

  }

}