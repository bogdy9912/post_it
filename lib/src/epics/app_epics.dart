import 'package:post_it/src/data/auth_api.dart';
import 'package:post_it/src/epics/auth_apics.dart';
import 'package:post_it/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi})
      : _authApi = authApi;

  final AuthApi _authApi;


  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,

    ]);
  }
}