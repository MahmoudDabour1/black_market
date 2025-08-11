class RegisterRequestModel {
  final String name;
  final String email;
  final String password;
  final String password_confirmation;

  RegisterRequestModel({
    required this.email,
    required this.password,
    required this.name,
    required this.password_confirmation,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
    };
  }
}
