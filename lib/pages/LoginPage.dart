import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: const Center(
        //   children: [
        // Image(image: ,)
        child: Text(
          "LoginPage",
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
