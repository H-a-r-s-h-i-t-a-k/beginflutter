import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Text("Harshita Kashyap"),
//   ));
// }
void main() {
  runApp(new MyApp());
}

// app1 start;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "First App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Homeeeee page"),
//         ),
//         body: Center(
//           child: Text("Heyyy harshitaaaaaaaa"),
//         ),
//       ),
//     );
//   }
// }

// app1 end;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
// appp2 start;;;;;;;;;;;;;;;;;;;;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      // home: LoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 215, 180),
        primarySwatch: Colors.brown,
        brightness: Brightness.light,
        primaryColor: Colors.amber,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String mytext = "Hello world";

//   void _changeText() {
//     setState(() {
//       if (mytext.startsWith('H')) {
//         mytext = "Welcom to App";
//       } else {
//         mytext = "Hello World";
//       }
//     });
//   }

//   Widget _bodyWidget() {
//     return Container(
//         padding: const EdgeInsets.all(9.0),
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(mytext),
//             // OutlinedButton(
//             // TextButton(
//             ElevatedButton(
//               style: TextButton.styleFrom(
//                   foregroundColor: Color.fromARGB(255, 249, 247, 248),
//                   backgroundColor: Color.fromARGB(235, 110, 130, 91)),
//               onPressed: _changeText,
//               child: const Text(
//                 "click",
//                 style: TextStyle(fontFamily: AutofillHints.birthdayDay),
//               ),
//               // color: Colors.deepPurpleAccent,
//             ),
//           ],
//         )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "HomePage",
//           style: TextStyle(fontSize: 23),
//         ),
//       ),
//       body: _bodyWidget(),
//       drawer: Drawer(),
//     );
//   }
// }

// appp2 end;;;;;;;;;;;;;;;;;;;;;;;;;;

// appp333333333333333;;;;;;;;;;;;;;

        // theme: ThemeData(
        //   primarySwatch: Colors.pinkAccent,
        //   brightness: Brightness.light,
        //   accentColor: Color.red,
        // ),