
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/calendarwdiget.dart';


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
                                child: calendar(title:'Loren Ispam'),
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