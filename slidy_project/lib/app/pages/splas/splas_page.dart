import 'package:flutter/material.dart';

class SplasPage extends StatefulWidget {
  final String title;
  const SplasPage({Key key, this.title = "Splas"}) : super(key: key);

  @override
  _SplasPageState createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
