import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/actions/index.dart';
import 'package:post_it/src/data/auth_api.dart';
import 'package:post_it/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  AuthEpics({required this.api});

  final AuthApi api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, Register$>(_register),
      TypedEpic<AppState, Login$>(_login),
    ]);
  }

  Stream<AppAction> _register(
      Stream<Register$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Register$ action) => Stream<Register$>.value(action)
            .asyncMap((Register$ action) => api.register(
                username: action.username,
                password: action.password,
                displayName: action.displayName))
            .map((AppUser user) => Register.successful(user))
            .onErrorReturnWith((dynamic error) => Register.error(error)));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) =>
                api.login(username: action.username, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error)).doOnData(action.response));
  }
}
