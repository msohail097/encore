
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';

class general extends StatefulWidget {


  final String title;
  general({@required this.title});

  @override
  _NewUserPageState createState() => _NewUserPageState();
}

class _NewUserPageState extends State<general> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return   Center(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.080,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.blue, //                   <--- border color
            width: 2.0,
          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Text(widget.title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 13 *
                              MediaQuery.textScaleFactorOf(
                                  context),
                          fontWeight: FontWeight.w500,
                          color: AppColors.kBlue
                      ),

                    )),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                child:
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.060,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.13,
                      decoration: BoxDecoration(
                        color: AppColors.kBlue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            topRight: Radius.circular(7),
                            bottomLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7)
                        ),
                      ),
                      child:
                      Icon(Icons.search,color: Colors.white,)
                    // Image(image: new AssetImage(
                    //     'assets/images/search.png'),
                    // ),

                  ),
                ),
              ),

            ]),
      ),
    );


  }

}