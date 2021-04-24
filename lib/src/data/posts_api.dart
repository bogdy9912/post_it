import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_it/src/models/index.dart';

class PostsApi {
  PostsApi({required String baseUrl}) : _baseUrl = baseUrl;

  final String _baseUrl;

  Stream<List<Post>> getFeed() async* {
    final Uri url = Uri.parse(_baseUrl);

    while (true) {
//      await Future.delayed(Duration(seconds: 1));
      final http.Response response = await http.get(url);
      final List<dynamic> postsList = json.decode(response.body)['data'];

      final List<Post> result =
          postsList.map((dynamic e) => Post.fromJson(e)).toList();
      yield result;
//      yield random.nextDouble();
    }
  }

  Future<void> createPost({required String message, String? token}) async {
    final Uri url = Uri.parse(_baseUrl);
    final http.Response response = await http.post(url,
        headers: <String, String>{
          'Authorization': token == null ? '' : 'Bearer $token'
        },
        body: <String, dynamic>{
          'message': message
        });
    print('dat');
    print(response.body);
  }
}
