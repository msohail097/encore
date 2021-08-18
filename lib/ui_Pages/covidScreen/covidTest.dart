

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/models/covid.dart';
import 'package:my_encore/ui_Pages/covidScreen/widgets/covid_test_yes_no.dart';
import '../commonWidgets/button.dart';

class covidScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<covidScreen> {

  int _selectedIndex;
  List<bool> _list = [true,false];


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
            children: [

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.030,),

              FutureBuilder(
                future: _getNames(),
               builder: (BuildContext context, AsyncSnapshot snapshot) {
             if (snapshot.data == null) {
               return Container(
                    child: Center(
                  child: Text('Loading'),
                                 ),
                             );
                               } else {
               return ListView.builder(
                   physics: ScrollPhysics(),
                   shrinkWrap: true,
                   itemCount: snapshot.data.length,
                   scrollDirection: Axis.vertical,
                   itemBuilder: (BuildContext context, int index) {
                     return Padding(
                       padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                       child: covid(title: snapshot.data[index].name,),
                     );
                   });
                 }}),



              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),


              InkWell(
                  onTap: (){

                  },
                  child: button(title: 'Stuur')),

              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.020,),
            ],
          ),
        ),
      ),
    );
  }
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }



  Future<String> _loadRecentActivity() async {
    return await rootBundle.loadString('assets/covid.json');
  }

  Future<List<Covid>> _getNames() async {
    String jsonString = await _loadRecentActivity();
    final jsonResponse = json.decode(jsonString);
    List<Covid> recentusers = [];
    for (var u in jsonResponse) {
      Covid user = Covid(
          u["name"]);
      recentusers.add(user);
    }

    print(recentusers.length);

    return recentusers;
  }



}
