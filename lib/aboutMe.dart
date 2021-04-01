import 'package:flutter/material.dart';

/*
 *  
 * This page contains all necessary information about me
 * 
 * @author el_even
 * @version 1.0
 * @since 01/04/2021
 *
 */
class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My name is David Truong",
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.grey),
      home: AboutMePage(title: "My name is David Truong"),
    );
  }
}

class AboutMePage extends StatefulWidget {
  AboutMePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State<StatefulWidget> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
