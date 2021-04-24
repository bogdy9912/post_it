import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/presentation/app_routes.dart';
import 'package:post_it/src/presentation/app_theme.dart';
import 'package:post_it/src/presentation/mixin/init_mixin.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(PostIt());
}

class PostIt extends StatefulWidget {
  @override
  _PostItState createState() => _PostItState();
}

class _PostItState extends State<PostIt> with InitMixin<PostIt> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Post it',
              theme: buildThemeData(context),
              routes: AppRoutes.routes,
            ),
          );
        }
        if (snapshot.hasError) {
          throw snapshot.error!;
        }

        return MaterialApp(
          title: 'Post it',
          theme: ThemeData.dark(),
          home: const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
