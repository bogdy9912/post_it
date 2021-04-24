part of posts_actions;

@freezed
abstract class GetFeed with _$GetFeed implements AppAction {
  const factory GetFeed() = GetFeed$;

  const factory GetFeed.successful(List<Post> posts) = GetFeedSuccessful;

  const factory GetFeed.event() = GetFeedEvent;

  @Implements(ErrorAction)
  const factory GetFeed.error(Object error) = GetFeedError;
}
