import 'package:flutter/material.dart';
import 'package:go_job/controller/logincontroller.dart';
import 'package:go_job/model/login_model.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:go_job/pages/login.dart';
import 'dart:convert';
import 'package:go_job/pages/dashboard.dart';
import 'package:go_job/api/api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _namaPelamar = '';
  String _email = '';
  String _password= '';
  // final controller = Get.put(LoginController());
  // bool _isLoading = false;
  // final _formKey = GlobalKey<FormState>();
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  // bool _secureText = true;
  // late String name, email, password;

  // showHide() {
  //   setState(() {
  //     _secureText = !_secureText;
  //   });
  // }

  // _showMsg(msg) {
  //   final snackBar = SnackBar(
  //     content: Text(msg),
  //   );
  //   _scaffoldKey.currentState!.showSnackBar(snackBar);
  // }
  createAccountPressed() {
    
  }

  @override
  // double nilaiSlider = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Register",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: primarycolor,
      ),
      body: SingleChildScrollView(
        child: Form(
          // key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.8),
                  child: Image.asset(
                    //untuk logo image
                    'assets/images/logo1.png',
                    height: 150,
                    width: 200,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.8, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk input email
                    decoration: new InputDecoration(
                      labelText: "nama".tr,
                      icon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
                    onChanged: (value) {
                      _namaPelamar = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'namakosong'.tr;
                      }
                      // name = namaValue;
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk input email
                    decoration: new InputDecoration(
                      labelText: "Email",
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
                    onChanged: (value) {
                      _email = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'emailkosong'.tr;
                      }
                      // email = emailValue;
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk textfield password
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "sandi".tr,
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
                    onChanged: (value) {
                      _password = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'sandikosong'.tr;
                      }
                      // password = passwordValue;
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk textfield password
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "konfirsandi".tr,
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "konfirkosong".tr;
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                ),
                SizedBox(
                  width: 210,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primarycolor,
                    ),
                    onPressed: () => createAccountPressed(),
                      // if (_formKey.currentState!.validate()) {
                      //   _register();
                      // },
                    
                    child: Text(
                      'daftar'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: new Text(
                    //untuk text or
                    "atau".tr,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 210,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: primarycolor,
                    ),
                    onPressed: () {
                      // controller.login();
                    },
                    icon: Icon(
                      // <-- Icon
                      Icons.login,
                      size: 24.0,
                    ),
                    label: Text(
                      'daftargoogle'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'sudahpunyaakun'.tr,
                              style: TextStyle(color: Colors.grey)),
                          WidgetSpan(
                              child: GestureDetector(
                            child: Text(
                              'masuk'.tr,
                              style: TextStyle(color: primarycolor),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                          ))
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void _register() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   var data = {'name': name, 'email': email, 'password': password};

  //   var res = await LoginResponseModel().auth(data, '/register');
  //   var body = json.decode(res.body);
  //   if (body['success']) {
  //     SharedPreferences localStorage = await SharedPreferences.getInstance();
  //     localStorage.setString('token', json.encode(body['token']));
  //     localStorage.setString('user', json.encode(body['user']));
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => Dashboard()),
  //     );
  //   } else {
  //     if (body['message']['name'] != null) {
  //       _showMsg(body['message']['name'][0].toString());
  //     } else if (body['message']['email'] != null) {
  //       _showMsg(body['message']['email'][0].toString());
  //     } else if (body['message']['password'] != null) {
  //       _showMsg(body['message']['password'][0].toString());
  //     }
  //   }

//     setState(() {
//       _isLoading = false;
//     });
//   }
}
