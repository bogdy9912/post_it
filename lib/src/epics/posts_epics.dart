import 'package:post_it/src/actions/index.dart';
import 'package:post_it/src/actions/posts/index.dart';
import 'package:post_it/src/data/posts_api.dart';
import 'package:post_it/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostsEpics {
  PostsEpics({required this.api});

  final PostsApi api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetFeed$>(_getFeed),
      TypedEpic<AppState, CreatePost$>(_createPost),
    ]);
  }

  Stream<AppAction> _getFeed(
      Stream<GetFeed$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFeed$ action) => Stream<GetFeed$>.value(action)
            .flatMap((GetFeed$ action) => api.getFeed())
            .map((List<Post> posts) => GetFeed.successful(posts))
            .takeUntil(actions.whereType<GetFeedEvent>())
            .onErrorReturnWith((dynamic error) => GetFeed.error(error)));
  }

  Stream<AppAction> _createPost(
      Stream<CreatePost$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePost$ action) => Stream<CreatePost$>.value(action)
            .asyncMap((CreatePost$ action) =>
                api.createPost(message: action.message, token: action.token))
            .mapTo(const CreatePost.successful())
            .onErrorReturnWith((dynamic error) => CreatePost.error(error))
            .doOnData(action.response));
  }
}
