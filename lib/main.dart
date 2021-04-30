import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'aboutMe.dart';
import 'experiences.dart';
import 'formation.dart';
import 'skills.dart';

void main() {
  runApp(MyApp());
}

/*
 * Main screen in opening the resume
 * 
 * @author el_even
 * @since 01/04/2021
 * @version 1.0
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'David Resume',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'David\'s profile'),
        '/AboutMe': (context) => AboutMePage(title: 'AboutMe'),
        '/Experiences': (context) => ExperiencesPage(title: 'Experiences'),
        '/Formation': (context) => FormationPage(title: 'Formation'),
        '/Skills': (context) => SkillsPage(title: 'Skills')
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    stdout.writeln("Started MyHomePageState");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    'Welcome to my profile. Do you know something about me?'
                    'Let\'s begin our journey',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildCardItem(Icons.account_box, "AboutMe"),
                  _buildCardItem(Icons.business, "Experiences"),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildCardItem(Icons.book, "Formation"),
                    _buildCardItem(Icons.computer, "Skills"),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Expanded _buildCardItem(IconData icon, String title) {
    stdout.writeln("_buildCardItem with " + title);
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/' + title);
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                    ),
                    Text(title)
                  ]),
            )),
      ),
    );
  }
}
