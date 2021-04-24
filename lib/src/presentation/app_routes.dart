import 'package:flutter/widgets.dart';
import 'package:post_it/src/presentation/add_post/add_post_page.dart';
import 'package:post_it/src/presentation/home.dart';
import 'package:post_it/src/presentation/login/login_page.dart';
import 'package:post_it/src/presentation/register/register_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String register = '/register';
  static const String login = '/login';
  static const String addPost = '/addPost';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    register: (BuildContext context) => const RegisterPage(),
    login: (BuildContext context) => const LoginPage(),
    addPost: (BuildContext context) => const AddPostPage(),
  };
}
