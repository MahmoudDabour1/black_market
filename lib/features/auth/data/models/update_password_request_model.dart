class UpdatePasswordRequestModel {
  final String password;
  final String password_confirmation;
  final String otp;
  final String email;

  UpdatePasswordRequestModel({
    required this.password,
    required this.password_confirmation,
    required this.otp,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'password_confirmation': password_confirmation,
      'otp': otp,
      'email': email,
    };
  }
  factory UpdatePasswordRequestModel.fromJson(Map<String, dynamic> json) {
    return UpdatePasswordRequestModel(
      password: json['password'] as String,
      password_confirmation: json['password_confirmation'] as String,
      otp: json['otp'] as String,
      email: json['email'] as String,
    );
  }
}
