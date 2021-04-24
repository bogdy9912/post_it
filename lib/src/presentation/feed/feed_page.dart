import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/actions/posts/index.dart';
import 'package:post_it/src/containers/posts/posts_container.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/presentation/app_routes.dart';
import 'package:post_it/src/presentation/feed/post_item.dart';

class FeedPage extends StatelessWidget {
  const FeedPage();

  @override
  Widget build(BuildContext context) {
    return PostsContainer(
      builder: (BuildContext context, List<Post> posts) {
        print(posts.length);
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Feed',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const GetFeed());
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const GetFeed.event());
                  StoreProvider.of<AppState>(context).dispatch(const SignOut());
                },
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 6),
                    itemCount: posts.length,
                    itemBuilder: (BuildContext context, int index) => PostItem(posts[index]),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: double.infinity, height: 48),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addPost);
                  },
                  child: const Text('ADD POST'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
