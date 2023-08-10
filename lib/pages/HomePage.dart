import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello world";

  void _changeText() {
    setState(() {
      if (mytext.startsWith('H')) {
        mytext = "Welcom to App";
      } else {
        mytext = "Hello World";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
        padding: const EdgeInsets.all(9.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(mytext),
            // OutlinedButton(
            // TextButton(
            ElevatedButton(
              style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 249, 247, 248),
                  backgroundColor: Color.fromARGB(235, 110, 130, 91)),
              onPressed: _changeText,
              child: const Text(
                "click",
                style: TextStyle(fontFamily: AutofillHints.birthdayDay),
              ),
              // color: Colors.deepPurpleAccent,
            ),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomePage",
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: _bodyWidget(),
      drawer: const Drawer(),
    );
  }
}
