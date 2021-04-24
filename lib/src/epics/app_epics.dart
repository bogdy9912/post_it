import 'package:post_it/src/data/auth_api.dart';
import 'package:post_it/src/data/posts_api.dart';
import 'package:post_it/src/epics/auth_apics.dart';
import 'package:post_it/src/epics/posts_epics.dart';
import 'package:post_it/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi, required PostsApi postsApi})
      : _authApi = authApi,
        _postsApi = postsApi;

  final AuthApi _authApi;
  final PostsApi _postsApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
      PostsEpics(api: _postsApi).epics,
    ]);
  }
}
