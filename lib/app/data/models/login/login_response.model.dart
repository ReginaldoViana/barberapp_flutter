class LoginResponse {
  late String clientName;
  late int loggedIn;
  late String token;

  LoginResponse({required this.clientName, required this.loggedIn, required this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    clientName = json['clientName'];
    loggedIn = json['loggedIn'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clientName'] = this.clientName;
    data['loggedIn'] = this.loggedIn;
    data['token'] = this.token;
    return data;
  }
}