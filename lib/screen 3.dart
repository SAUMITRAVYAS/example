import 'package:flutter/material.dart';
class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Mail Id verification",textDirection: TextDirection.ltr,),



        )
    );
  }
}
