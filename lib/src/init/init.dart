
import 'package:post_it/src/data/auth_api.dart';
import 'package:post_it/src/data/posts_api.dart';
import 'package:post_it/src/epics/app_epics.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {


  final AuthApi authApi = AuthApi(baseUrl: 'https://intern-hackathon.mready.net/api/auth/');
  final PostsApi postsApi = PostsApi(baseUrl: 'https://intern-hackathon.mready.net/api/posts');
  final AppEpics epic = AppEpics(authApi: authApi, postsApi: postsApi);

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  );
}
