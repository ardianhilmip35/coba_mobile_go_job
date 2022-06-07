import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:go_job/api/api_services.dart';


class AuthServices{
  static Future<http.Response> register(String name, String email, String password) async {
    Map data = {
      "nama_pelamar": name,
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL);
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response; 
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email":email,
      "password":password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL);
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body
    );
    print(response.body);
    return response; 
  }
}