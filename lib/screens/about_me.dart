import 'package:flutter/material.dart';
import 'package:unit6_asssignment_delacruz/components/tab_widget_1.dart';
import 'package:unit6_asssignment_delacruz/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  List<Widget> _tabScreens = [TabWidget1(), TabWidget2()];
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    List<Widget> tabLists = [
      Tab(
        text: "contact", 
        icon:Icon(Icons.contact_page),
        ),
      Tab(
        text: "search",
        icon:Icon(Icons.search),
        ),
    ];

    @override
    Widget build(BuildContext context){
    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My New Home"),
          bottom: TabBar(
            tabs: tabLists), 
        ),
        body: TabBarView(children: _tabScreens),

      ),
    );
   }
  }