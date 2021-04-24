import 'package:built_collection/built_collection.dart';
import 'package:post_it/src/actions/posts/index.dart';
import 'package:post_it/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers<PostsState>(<Reducer<PostsState>>[
  TypedReducer<PostsState, GetFeedSuccessful>(_getFeedSuccessful),
//  TypedReducer<PostsState, CreatePostSuccessful>(_createPostSuccessful),
]);

PostsState _getFeedSuccessful(PostsState state, GetFeedSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.posts = ListBuilder<Post>(action.posts));
}

