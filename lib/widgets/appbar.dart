
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/models/covid.dart';
import '../ui_Pages/calculator.dart';
import '../ui_Pages/details_screen.dart';
import 'package:my_encore/widgets/button.dart';
import 'package:my_encore/widgets/custonmAppbar.dart';

import '../ui_Pages/calendar.dart';
import '../ui_Pages/contact_us.dart';
import '../ui_Pages/news.dart';

class appbarScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<appbarScreen> with TickerProviderStateMixin{

  TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller=new TabController(initialIndex:0,length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:CustomAppBar(
          title: 'Home',
          topTabs: [
            {'Details':homeScreen()},
            {'News':   newsScreen()},
            {'Calendar':calendarScreen()},
            {'Contact Us':contactScreen()},


          ],
          topTabController: _controller,


        ),

      ),
    );
  }


}
