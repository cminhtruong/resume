import 'package:flutter/material.dart';

/*
 *
 * The list of experiences
 *
 * @author el_even
 * @since 02/04/2021
 * @version 1.0
 */
class Formation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My education",
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.grey),
      home: FormationPage(title: "Formation"),
    );
  }
}

class FormationPage extends StatefulWidget {
  FormationPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _FormationState();
}

class _FormationState extends State<FormationPage> {
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
