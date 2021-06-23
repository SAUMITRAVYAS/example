import 'package:example/screen%203.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
import 'screen 3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mystatefullwidget(),
    theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.blue,
        brightness: Brightness.dark),
    routes: <String, WidgetBuilder>{
      "/screen2": (BuildContext context) => screen2(),
      "/screen3": (BuildContext context) => screen3(),
    },
  ));
}

class mystatefullwidget extends StatefulWidget {
  const mystatefullwidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<mystatefullwidget> {
  String input = "";
  List list = [];
  void initState() {
    super.initState();
    list.add("name");
    list.add("surname");
    list.add("DOB");
    list.add("gender");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ELECTA",
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(image: AssetImage('images/b2.jpg')),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 16.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/saumitra.jpeg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Saumitra Vyas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.white)),
                      Text("a responsible Voter",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.add),
                    title: Text('VOTE'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.add),
                    title: Text('RESULTS'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.add),
                    title: Text('CANDIDATEs'),
                    onTap: () {}),
                ListTile(
                    leading: Icon(Icons.add),
                    title: Text('MY PROFILE'),
                    onTap: () {})
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Add to fill"),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: <Widget>[
                    FlatButton(
                        child: Text("Add"),
                        onPressed: () {
                          setState(() {
                            list.add(input);
                          });
                          Navigator.of(context).pop();
                        })
                  ],
                );
              });
        },
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(list[index]),
              child: ListTile(title: Text(list[index])),
              onDismissed: (direction) {
                setState(() {
                  list.removeAt(index);
                });
              },
            );
          }),
    );
  }
}
