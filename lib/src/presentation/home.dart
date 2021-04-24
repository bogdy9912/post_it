import 'package:flutter/material.dart';
import 'package:post_it/src/containers/auth/user_container.dart';
import 'package:post_it/src/models/auth/index.dart';
import 'package:post_it/src/presentation/feed/feed_page.dart';
import 'package:post_it/src/presentation/login/login_page.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      if (user == null) {
        return const LoginPage();
      } else {
        return const FeedPage();
      }
    });
  }
}
