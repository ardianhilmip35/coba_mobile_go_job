// class LoginResponseModel {
//   final String token;
//   final String error;

//   LoginResponseModel({
//     required this.token,
//     required this.error,
//   });

//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     return LoginResponseModel(token: json["token"] != null ? json["token"]: "", error: json["error"] != null ? json["error"]: "",);
//   } 
// }

// class LoginRequestModel {
//   String email;
//   String password;

//   LoginRequestModel({
//     required this.email,
//     required this.password,
//   });

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'email': email.trim(),
//       'password': password.trim(),
//     };
//     return map;
//   }
// }

class LoginResponseModel {
  final int kode;
  final String pesan, id;

  LoginResponseModel({
    required this.kode,
    required this.pesan,
    required this.id,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      kode: json["kode"],
      pesan: json["pesan"],
      id: json["id"],
    );
  }
}