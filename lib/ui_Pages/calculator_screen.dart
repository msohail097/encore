


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/ui_Pages/widgets/custom_button.dart';
import 'widgets/custom_temperature.dart';

class CalculatorScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CalculatorScreen> {

  List<bool> _list = [true,false];

  TextEditingController mobilenoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kBlue,
          toolbarHeight: 100, // default is 56
          toolbarOpacity: 0.5,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0,20,0,0),
            child: Container(
              height: MediaQuery.of(context).size.height*0.060,
              width:  MediaQuery.of(context).size.width*1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined,color: Colors.white,)),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0,0,0),
                    child: Text('Covid-19 Test',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20 *
                                  MediaQuery.textScaleFactorOf(
                                      context),
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),

                        )),
                  ),

                ],
              ),
            ),
          ),
          shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(90.0),
                bottomRight: Radius.circular(90.0)
            ),),

        ),
        body:

        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.070,),


              Padding(
                padding: const EdgeInsets.fromLTRB(25,0,0,0),
                child: Text('Tik in Temperature',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                      color: AppColors.kBlue
                      ),
                    )),
              ),





              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),

              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {

                    });
                    _list[0] = !_list[0];
                    _list[1] = false;
                  },
                  child: CustomTemperature(),
                ),
              ),





              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),


              InkWell(
                  onTap: (){

                  },
                  child: CustomButton(title: 'Done')),


            ],
          ),
        ),
      ),
    );
  }





}
