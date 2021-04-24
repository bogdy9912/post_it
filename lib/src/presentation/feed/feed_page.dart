import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/models/index.dart';

class FeedPage extends StatelessWidget {
  const FeedPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feed',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(const SignOut());
            },
          ),
        ],
      ),
    );
  }
}
