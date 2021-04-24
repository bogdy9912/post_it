import 'package:post_it/src/actions/auth/index.dart';
import 'package:post_it/src/models/index.dart';
import 'package:post_it/src/reducer/auth_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOut$>(_signOut),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    b
      .auth = authReducer(state.auth, action).toBuilder();
  });
}

AppState _signOut(AppState state, SignOut$ action) {
  return AppState.initialState();
}
