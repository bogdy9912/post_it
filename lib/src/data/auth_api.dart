import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_it/src/models/auth/index.dart';

class AuthApi {
  AuthApi({required String baseUrl}) : _baseUrl = baseUrl;

  final String _baseUrl;

  Future<AppUser> register({required String username, required String password, required String displayName}) async {
    final Uri url = Uri.parse(_baseUrl + 'register');

    final http.Response response = await http
        .post(url, body: <String, dynamic>{'username': username, 'password': password, 'display_name': displayName});

    if (json.decode(response.body)['error'] != null) {
      print(json.decode(response.body).toString());
      print(json.decode(response.body)['error']);
      throw json.decode(response.body)['error'];
    }

    final AppUser user = AppUser.fromJson(json.decode(response.body)['data']['user']);
    final AppUser finalUser = AppUser((AppUserBuilder b) {
      b.uid = user.uid;
      b.username = user.username;
      b.displayName = user.displayName;
      b.token = json.decode(response.body)['data']['token'];
    });

    return finalUser;
  }

  Future<AppUser> login({required String username, required String password}) async {
    final Uri url = Uri.parse(_baseUrl + 'login');

    final http.Response response =
        await http.post(url, body: <String, dynamic>{'username': username, 'password': password});

    final AppUser user = AppUser.fromJson(json.decode(response.body)['data']['user']);

    final AppUser finalUser = AppUser((AppUserBuilder b) {
      b.uid = user.uid;
      b.username = user.username;
      b.displayName = user.displayName;
      b.token = json.decode(response.body)['data']['token'];
    });

    print(finalUser.token);

    return finalUser;
  }
}
