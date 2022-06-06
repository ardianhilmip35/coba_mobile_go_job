// // import 'dart:io';

// // import 'package:go_job/model/login_model.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

// // class APIServices {
// //   Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
// //     String url = ("http://127.0.0.1:8000/api/login");

// //     final response = await http.post(Uri.parse(url), body: requestModel.toJson());
// //     if(response.statusCode == 200 || response.statusCode == 400) {
// //       return LoginResponseModel.fromJson(json.decode(response.body));
// //     } else {
// //       throw Exception('Failed to load Data');
// //     }
// //   }
// // }

// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:shared_preferences/shared_preferences.dart';

// // class Network{
// //   final String url = 'http://127.0.0.1:8000/api/login';
// //   var token;

// //   _getToken() async {
// //     SharedPreferences localStorage = await  SharedPreferences.getInstance();
// //     token = jsonDecode(localStorage.getString('token'))['token'];
// //   }

// //   auth(data, apiURL) async {
// //     var fullUrl = url + apiURL;
// //     return await http.post(Uri.parse(fullUrl), body: jsonDecode(data),headers: _setHeaders());
// //   }

// //   getData(apiURL) async {
// //     var fullUrl = url + apiURL;
// //     await _getToken();
// //     return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
// //   }

// //   _setHeaders() => {
// //     'Content-type': 'application/json',
// //     'Accept': 'appliction/json',
// //     'Authorization': 'Bearer $token',
// //   };
// // }

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:go_job/model/login_model.dart';

// class LoginUser {
//   static Future<LoginResponseModel> loginUser(String email, password) async {
//     Uri _apiURL = Uri.parse("http://127.0.0.1:8000/api/login");

//     var response = await http.post(
//       _apiURL,
//       body: {
//         "email": email,
//         "password": password,
//       },
//     );

//     if (response.statusCode == 200) {
//       return LoginResponseModel.fromJson(json.decode(response.body));
//     } else {
//       throw Exception("Failed to create User");
//     }
//   }
// }

const String baseURL = "http://127.0.0.1:8000/api/";
const Map<String,String> headers = {"Conrent-Type":"application/json"}; 