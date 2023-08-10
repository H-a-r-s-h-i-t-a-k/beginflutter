import 'dart:async';

import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image(
        //   image: AssetImage('assest/images/female_user.png'),
        // ),
        const Image(
          // image: AssetImage('assest/images/login.png'),
          image: AssetImage('assest/images/currency.png'),
        ),
        // Image.asset("assest/images/login.png"), //wrong

        const Text(
          "Currency Converter",
          style: TextStyle(
            fontSize: 42,
            color: Color.fromARGB(255, 159, 35, 15),
            fontWeight: FontWeight.bold,
          ),
        ),

        const TextField(
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 20, 19, 16),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(139, 193, 200, 198),
            hintText: '2342343 in dollor',
            hintStyle: TextStyle(color: Colors.lightBlueAccent),
            helperText: '  Please Enter the amount in rupees ',
            prefixIcon: Icon(Icons.monetization_on),
            focusedBorder: OutlineInputBorder(),

            // prefixIconColor: Color.fromARGB(2, 61, 61, 55),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "EnterUser Name",
                  labelText: "User Name",
                ),
              ),
              TextFormField(
                obscureText: true,
                autocorrect: true,
                decoration: const InputDecoration(
                  hintText: "EnterUser Password",
                  labelText: "User Password",
                ),
              ),
              ElevatedButton(
                  child: const Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Helllo Harshita");
                  }),
            ],
          ),
        ),
      ],
    )
        //   children: [
        // Image(image: ,)

        );
  }
}
