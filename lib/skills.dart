import 'package:flutter/material.dart';

/*
 *
 * The list of experiences
 *
 * @author el_even
 * @since 02/04/2021
 * @version 1.0
 */
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My skills",
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.grey),
      home: SkillsPage(title: "Skills"),
    );
  }
}

class SkillsPage extends StatefulWidget {
  SkillsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _SkillsState();
}

class _SkillsState extends State<SkillsPage> {
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
