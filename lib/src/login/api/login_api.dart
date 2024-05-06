import 'dart:convert';

import 'package:b2boms/src/login/model/company_list_model.dart';
import 'package:http/http.dart' as http;

class LoginAPI {
  static onLogin(username, password) async {
    Uri api = Uri.parse(
        'http://myomsapi.globaltechsolution.com.np:802/api/User/Login?username=9868348282&password=9868348282');
    http.Response response = await http.get(api);

    if (response.statusCode == 200) {
      return LoginModel.fromJson(jsonDecode(response.body));
    } else {
      // throw Exception("ERROR");
      return LoginModel.fromJson({});
    }
  }
}
