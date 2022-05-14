import 'package:flutter/material.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 30.0),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  //untuk logo image
                  'assets/images/logo1.png',
                  height: 150,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 8.8, right: 8.8),
                child: TextFormField(
                  //untuk input email
                  decoration: new InputDecoration(
                    labelText: "Email",
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 8.8, right: 8.8),
                child: TextFormField(
                  //untuk textfield password
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              MaterialButton(
                //untuk button register
                height: 50.0,
                minWidth: 500.0,
                color: primarycolor,
                textColor: Colors.white,
                child: new Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                splashColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: new Text(
                  //untuk text or
                  "Or",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              MaterialButton(
                //untuk button sign up with google
                height: 50.0,
                minWidth: 500.0,
                color: primarycolor,
                textColor: Colors.white,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.login),
                  SizedBox(width: 10),
                  Text(
                    "Sign Up With Google",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ]),
                onPressed: () {},
                splashColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: new Text(
                  //untuk text
                  "Very easy and fast. We will not upload anything without your permission",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      //untuk text already have an account
                      "Don't have an account",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      //untuk text sign in
                      "Register!",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: primarycolor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}