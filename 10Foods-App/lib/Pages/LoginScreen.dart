import 'package:delivery_app/Pages/MainScreen.dart';
import 'package:delivery_app/Pages/SignupScreen.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 50.0,
                bottom: 50,
              ),
              alignment: Alignment.center,
              child: Text(
                "Log in to your account",
                style: TextStyle(
                  color: Color(0xffEA7E00),
                  fontFamily: "roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                ),
              ),
            ),
            Form(
              child: Column(
                children: <Widget>[
                  MyFormFeild(
                    hintText: "Email",
                  ),
                  MyFormFeild(
                    hintText: "Password",
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Expanded(child: SizedBox(height: 0.0)),
                      GestureDetector(
                        child: Text(
                          "Forgot Password?".toUpperCase(),
                          style: TextStyle(
                            color: Color(0xffEA7E00),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                    color: Color(0xffEA7E00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 75.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "roboto",
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
