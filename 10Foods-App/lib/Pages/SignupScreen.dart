import 'package:delivery_app/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/models/formModel.dart';
import 'package:validators/validators.dart' as validator;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  FormModel model = FormModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 30.0),
              alignment: Alignment.center,
              child: Text(
                "Create your account",
                style: TextStyle(
                  color: Color(0xffEA7E00),
                  fontFamily: "roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  MyFormFeild(
                    hintText: "FullName",
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Enter Your Name";
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      model.fullname = value;
                    },
                  ),
                  MyFormFeild(
                    hintText: "Email",
                    validator: (String value) {
                      if (!validator.isEmail(value)) {
                        return "Enter a valid Email Address";
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      model.email = value;
                    },
                    isEmail: true,
                  ),
                  MyFormFeild(
                    hintText: "Address",
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Enter Your Address";
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      model.address = value;
                    },
                  ),
                  MyFormFeild(
                    hintText: "Password",
                    validator: (String value) {
                      if (value.length < 8) {
                        return "Password should be 8 characters or more";
                      }
                      _formKey.currentState.save();
                      return null;
                    },
                    onSaved: (String value) {
                      model.password = value;
                    },
                    isPassWord: true,
                  ),
                  MyFormFeild(
                    hintText: "Confirm Password",
                    validator: (String value) {
                      if (value.length < 8) {
                        return "Password should be 8 characters or more";
                      } else if (model.password != null &&
                          value != model.password) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                    isPassWord: true,
                  ),
                  SizedBox(height: 20.0),
                  MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      }
                    },
                    color: Color(0xffEA7E00),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "roboto",
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "By Clicking Sign up you agree to all our Terms and Conditions.",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyFormFeild extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassWord;
  final bool isEmail;

  MyFormFeild({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassWord = false,
    this.isEmail = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 0.5,
              color: Color(0xffEA7E00),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 0.5,
              color: Color(0xffEA7E00),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 0.5,
              color: Color(0xffEA7E00),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 0.5,
              color: Color(0xffEA7E00),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xffEA7E00),
          ),
        ),
        obscureText: isPassWord ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType:
            isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
