import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Text("Harshita Kashyap"),
//   ));
// }
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Center(
          child: Text("Helllo harshita"),
        ),
      ),
    );
  }
}
