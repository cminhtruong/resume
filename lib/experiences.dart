import 'package:flutter/material.dart';

/*
 *
 * The list of experiences
 *
 * @author el_even
 * @since 02/04/2021
 * @version 1.0
 */
class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Working process",
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.grey),
      home: ExperiencesPage(title: "Experiences"),
    );
  }
}

class ExperiencesPage extends StatefulWidget {
  ExperiencesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<ExperiencesPage> {
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
