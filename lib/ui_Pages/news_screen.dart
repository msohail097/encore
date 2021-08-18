

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/ui_Pages/widgets/custom_button.dart';
import 'package:my_encore/ui_Pages/widgets/custom_search.dart';
import 'widgets/custom_testarticle.dart';


class NewsScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NewsScreen> {



  @override
  void initState(){
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.050,),
            CustomSearch(title: 'General News'),


              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15,0,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Advertensies',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20 *
                                  MediaQuery.textScaleFactorOf(
                                      context),
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),

                        )),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),


              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.12,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.90,
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7, 0,0,0),
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.070,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.11,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6)
                            ),
                          ),
                          child:


                          Image(image:new AssetImage('assets/news.png'),
                          ),

                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,15,0),
                        child: Text('How to do it?',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15 *
                                      MediaQuery.textScaleFactorOf(
                                          context),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),

                            )),
                      ),

                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.080,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppColors.kOrange, //                   <--- border color
                                width: 2.0,
                              ),
                              color: AppColors.kOrange
                          ),

                          child:
                          Center(child:Text('See Here',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 15 *
                                        MediaQuery.textScaleFactorOf(
                                            context),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),

                              )),) ,
                        ),
                      ),

                    ]),

              ),

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.030,),


                       SingleChildScrollView(
                        child: Stack(
                          children:[
                           ListView.builder(
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount:3,
                              itemBuilder: (BuildContext context, int index) {
                                return CustomTestArticle();
                              }),


                          ],
                        ),


                      ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,30),
                child: Center(
                  child: InkWell(
                    onTap: (){

                    },
                    child: CustomButton( title: 'Add Articles')
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
