// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToForm(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // print("hello");
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image(
            //   image: AssetImage('assest/images/female_user.png'),
            // ),
            const Image(
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover,
              // image: AssetImage('assest/images/currency.png'),
            ),
            // Image.asset("assest/images/login.png"), //wrong

            Text(
              "Health Care\n welcome $name ",
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
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "EnterUser Name",
                      labelText: "User Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "user name can't be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      //state changed call build method
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: "EnterUser Password",
                      labelText: "User Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password can't be empty";
                      } else if (value.length < 5) {
                        return " can't excede more than 9 alphanumeric";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () => moveToForm(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        shape: //same working cirle
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius:
                        //     BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //     child: Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(100, 30)),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  //       print("Helllo Harshita");
                  //     }),
                ],
              ),
            ),
          ],
        ),
      ),
    )
        //   children: [
        // Image(image: ,)

        );
  }
}
