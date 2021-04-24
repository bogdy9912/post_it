part of posts_actions;

@freezed
abstract class CreatePost with _$CreatePost implements AppAction {
  const factory CreatePost({required String message, String? token, required ActionResponse response}) = CreatePost$;

  const factory CreatePost.successful() = CreatePostSuccessful;

  @Implements(ErrorAction)
  const factory CreatePost.error(Object error) = CreatePostError;
}
