import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/models/posts/index.dart';
import 'package:redux/redux.dart';

class PostsContainer extends StatelessWidget {
  const PostsContainer({required this.builder});

  final ViewModelBuilder<List<Post>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Post>>(
      builder: builder,
      converter: (Store<AppState> store) =>
          store.state.postsState.posts.toList(),
    );
  }
}
