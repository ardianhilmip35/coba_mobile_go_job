// import 'dart:ffi';
import 'package:go_job/controller/logincontroller.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:go_job/model/login_model.dart';
import 'package:go_job/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:go_job/pages/register.dart';
import 'package:go_job/pages/dashboard.dart';
import 'package:go_job/api/api_services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:go_job/Notifikasi/toast.dart';
import 'package:go_job/main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final controller = Get.put(LoginController());

  // bool _isLoading = false;
  // final _formKey = GlobalKey<FormState>();
  // var email, password;
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  // bool _secureText = true;

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
  final _formKey = GlobalKey<FormState>();
  final _toast = ShowToast();
  String _idUser = "";

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    LoginUser.loginUser(_emailController.text, _passwordController.text)
        .then((value) {
      if (value.kode == 200) {
        _idUser = value.id.toString();
        sessionLogin();
        _toast.showToast(value.pesan);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyBottomBar(),
          ),
        );
      } else {
        _toast.showToast(value.pesan);
      }
    });
  }

  Future sessionLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString("id_user", _idUser);
      pref.setBool("is_login", true);
    });
  }
// final TextEditingController emailController = TextEditingController();
// final TextEditingController passwordController = TextEditingController();
// bool visible = false;
// late LoginRequestModel requestModel;

// @override
// void initState() {
//     super.initState();
//     requestModel = new LoginRequestModel();
//   }

  @override
  // double nilaiSlider = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        title: Text(
          "Login",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: primarycolor,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
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
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk input email
                    // onSaved: (value) => requestModel.email = value,
                    controller: _emailController,
                    decoration: new InputDecoration(
                      labelText: "Email",
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'emailkosong'.tr;
                      }
                      // email = value;
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 8.8, right: 8.8),
                  child: TextFormField(
                    //untuk textfield password
                    controller: _passwordController,
                    // onSaved: (value) => requestModel.password = value,
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "sandi".tr,
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0)),
                    ),
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
                  padding: EdgeInsets.only(top: 40.0),
                ),
                SizedBox(
                  width: 210,
                  child: ElevatedButton(
                    child: Text(
                      'masuk'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: primarycolor,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _login();
                      }
                      // if(_formKey.currentState.validate()) {
                      //   _login();
                      // }
                    },
                    // setState(() {
                    //   visible = true;
                    // });
                    // signIn(emailController.text, passwordController.text);

                    // },
                    
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
                      Icons.login,
                      size: 24.0,
                    ),
                    label: Text(
                      'masukgoogle'.tr,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'belumpunyaakun'.tr,
                              style: TextStyle(color: Colors.grey)),
                          WidgetSpan(
                              child: GestureDetector(
                            child: Text(
                              'daftar'.tr,
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

//   void _login() async {
//     setState(() {
//       _isLoading = true;
//     });

//     // var email;
//     // var password;
//     var data = {'email': email, 'password': password};

//     var res = await LoginResponseModel().auth(data, '/login');
//     var body = json.decode(res.body);
//     if (body['success']) {
//       SharedPreferences localStorage = await SharedPreferences.getInstance();
//       localStorage.setString('token', json.encode(body['token']));
//       localStorage.setString('user', json.encode(body['user']));
//       Navigator.pushReplacement(
//         context,
//         new MaterialPageRoute(builder: (context) => Dashboard()),
//       );
//     } else {
//       _showMsg(body['message']);
//     }

//     setState(() {
//       _isLoading = false;
//     });
//   }
}

// bool validateAndSave() {
//   final form = _formKey.currentState;
//   if(form.validate()) {
//     form.save();
//     return true;
//   } return false;
// }

