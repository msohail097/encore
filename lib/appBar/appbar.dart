
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_encore/ui_Pages/widgets/custonm_Appbar.dart';

import '../ui_Pages/details_screen.dart';


import '../ui_Pages/calendar_screen.dart';
import '../ui_Pages/contactuUs_screen.dart';
import '../ui_Pages/news_screen.dart';

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
