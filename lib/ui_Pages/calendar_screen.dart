
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_calendarwdiget.dart';


class CalendarScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CalendarScreen> {

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
                                child: CustomCalendar(title:'Loren Ispam'),
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
