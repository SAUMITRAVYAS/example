import 'package:flutter/material.dart';
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("face verification",textDirection: TextDirection.ltr,),
           actions: <Widget>[

                     IconButton(
    icon: Icon(Icons.arrow_forward),
    onPressed: (){
    Navigator.pushNamed(context,'/screen3');
    }
    ),
        ]
    )
    );


  }
}
