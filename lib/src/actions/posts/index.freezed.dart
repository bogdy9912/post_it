// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of posts_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetFeedTearOff {
  const _$GetFeedTearOff();

  GetFeed$ call() {
    return const GetFeed$();
  }

  GetFeedSuccessful successful(List<Post> posts) {
    return GetFeedSuccessful(
      posts,
    );
  }

  GetFeedEvent event() {
    return const GetFeedEvent();
  }

  GetFeedError error(Object error) {
    return GetFeedError(
      error,
    );
  }
}

/// @nodoc
const $GetFeed = _$GetFeedTearOff();

/// @nodoc
mixin _$GetFeed {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFeed$ value) $default, {
    required TResult Function(GetFeedSuccessful value) successful,
    required TResult Function(GetFeedEvent value) event,
    required TResult Function(GetFeedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFeed$ value)? $default, {
    TResult Function(GetFeedSuccessful value)? successful,
    TResult Function(GetFeedEvent value)? event,
    TResult Function(GetFeedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedCopyWith<$Res> {
  factory $GetFeedCopyWith(GetFeed value, $Res Function(GetFeed) then) =
      _$GetFeedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeedCopyWithImpl<$Res> implements $GetFeedCopyWith<$Res> {
  _$GetFeedCopyWithImpl(this._value, this._then);

  final GetFeed _value;
  // ignore: unused_field
  final $Res Function(GetFeed) _then;
}

/// @nodoc
abstract class $GetFeed$CopyWith<$Res> {
  factory $GetFeed$CopyWith(GetFeed$ value, $Res Function(GetFeed$) then) =
      _$GetFeed$CopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeed$CopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeed$CopyWith<$Res> {
  _$GetFeed$CopyWithImpl(GetFeed$ _value, $Res Function(GetFeed$) _then)
      : super(_value, (v) => _then(v as GetFeed$));

  @override
  GetFeed$ get _value => super._value as GetFeed$;
}

/// @nodoc
class _$GetFeed$ implements GetFeed$ {
  const _$GetFeed$();

  @override
  String toString() {
    return 'GetFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFeed$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFeed$ value) $default, {
    required TResult Function(GetFeedSuccessful value) successful,
    required TResult Function(GetFeedEvent value) event,
    required TResult Function(GetFeedError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFeed$ value)? $default, {
    TResult Function(GetFeedSuccessful value)? successful,
    TResult Function(GetFeedEvent value)? event,
    TResult Function(GetFeedError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetFeed$ implements GetFeed {
  const factory GetFeed$() = _$GetFeed$;
}

/// @nodoc
abstract class $GetFeedSuccessfulCopyWith<$Res> {
  factory $GetFeedSuccessfulCopyWith(
          GetFeedSuccessful value, $Res Function(GetFeedSuccessful) then) =
      _$GetFeedSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class _$GetFeedSuccessfulCopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeedSuccessfulCopyWith<$Res> {
  _$GetFeedSuccessfulCopyWithImpl(
      GetFeedSuccessful _value, $Res Function(GetFeedSuccessful) _then)
      : super(_value, (v) => _then(v as GetFeedSuccessful));

  @override
  GetFeedSuccessful get _value => super._value as GetFeedSuccessful;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(GetFeedSuccessful(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
class _$GetFeedSuccessful implements GetFeedSuccessful {
  const _$GetFeedSuccessful(this.posts);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'GetFeed.successful(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedSuccessful &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $GetFeedSuccessfulCopyWith<GetFeedSuccessful> get copyWith =>
      _$GetFeedSuccessfulCopyWithImpl<GetFeedSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFeed$ value) $default, {
    required TResult Function(GetFeedSuccessful value) successful,
    required TResult Function(GetFeedEvent value) event,
    required TResult Function(GetFeedError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFeed$ value)? $default, {
    TResult Function(GetFeedSuccessful value)? successful,
    TResult Function(GetFeedEvent value)? event,
    TResult Function(GetFeedError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetFeedSuccessful implements GetFeed {
  const factory GetFeedSuccessful(List<Post> posts) = _$GetFeedSuccessful;

  List<Post> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedSuccessfulCopyWith<GetFeedSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedEventCopyWith<$Res> {
  factory $GetFeedEventCopyWith(
          GetFeedEvent value, $Res Function(GetFeedEvent) then) =
      _$GetFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFeedEventCopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeedEventCopyWith<$Res> {
  _$GetFeedEventCopyWithImpl(
      GetFeedEvent _value, $Res Function(GetFeedEvent) _then)
      : super(_value, (v) => _then(v as GetFeedEvent));

  @override
  GetFeedEvent get _value => super._value as GetFeedEvent;
}

/// @nodoc
class _$GetFeedEvent implements GetFeedEvent {
  const _$GetFeedEvent();

  @override
  String toString() {
    return 'GetFeed.event()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFeedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return event();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFeed$ value) $default, {
    required TResult Function(GetFeedSuccessful value) successful,
    required TResult Function(GetFeedEvent value) event,
    required TResult Function(GetFeedError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFeed$ value)? $default, {
    TResult Function(GetFeedSuccessful value)? successful,
    TResult Function(GetFeedEvent value)? event,
    TResult Function(GetFeedError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class GetFeedEvent implements GetFeed {
  const factory GetFeedEvent() = _$GetFeedEvent;
}

/// @nodoc
abstract class $GetFeedErrorCopyWith<$Res> {
  factory $GetFeedErrorCopyWith(
          GetFeedError value, $Res Function(GetFeedError) then) =
      _$GetFeedErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetFeedErrorCopyWithImpl<$Res> extends _$GetFeedCopyWithImpl<$Res>
    implements $GetFeedErrorCopyWith<$Res> {
  _$GetFeedErrorCopyWithImpl(
      GetFeedError _value, $Res Function(GetFeedError) _then)
      : super(_value, (v) => _then(v as GetFeedError));

  @override
  GetFeedError get _value => super._value as GetFeedError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GetFeedError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetFeedError implements GetFeedError {
  const _$GetFeedError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetFeed.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeedError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GetFeedErrorCopyWith<GetFeedError> get copyWith =>
      _$GetFeedErrorCopyWithImpl<GetFeedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Post> posts) successful,
    required TResult Function() event,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Post> posts)? successful,
    TResult Function()? event,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetFeed$ value) $default, {
    required TResult Function(GetFeedSuccessful value) successful,
    required TResult Function(GetFeedEvent value) event,
    required TResult Function(GetFeedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetFeed$ value)? $default, {
    TResult Function(GetFeedSuccessful value)? successful,
    TResult Function(GetFeedEvent value)? event,
    TResult Function(GetFeedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetFeedError implements GetFeed, ErrorAction {
  const factory GetFeedError(Object error) = _$GetFeedError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFeedErrorCopyWith<GetFeedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreatePostTearOff {
  const _$CreatePostTearOff();

  CreatePost$ call(
      {required String message,
      String? token,
      required void Function(AppAction) response}) {
    return CreatePost$(
      message: message,
      token: token,
      response: response,
    );
  }

  CreatePostSuccessful successful() {
    return const CreatePostSuccessful();
  }

  CreatePostError error(Object error) {
    return CreatePostError(
      error,
    );
  }
}

/// @nodoc
const $CreatePost = _$CreatePostTearOff();

/// @nodoc
mixin _$CreatePost {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePost$ value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePost$ value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostCopyWith<$Res> {
  factory $CreatePostCopyWith(
          CreatePost value, $Res Function(CreatePost) then) =
      _$CreatePostCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostCopyWithImpl<$Res> implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(this._value, this._then);

  final CreatePost _value;
  // ignore: unused_field
  final $Res Function(CreatePost) _then;
}

/// @nodoc
abstract class $CreatePost$CopyWith<$Res> {
  factory $CreatePost$CopyWith(
          CreatePost$ value, $Res Function(CreatePost$) then) =
      _$CreatePost$CopyWithImpl<$Res>;
  $Res call({String message, String? token, void Function(AppAction) response});
}

/// @nodoc
class _$CreatePost$CopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePost$CopyWith<$Res> {
  _$CreatePost$CopyWithImpl(
      CreatePost$ _value, $Res Function(CreatePost$) _then)
      : super(_value, (v) => _then(v as CreatePost$));

  @override
  CreatePost$ get _value => super._value as CreatePost$;

  @override
  $Res call({
    Object? message = freezed,
    Object? token = freezed,
    Object? response = freezed,
  }) {
    return _then(CreatePost$(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$CreatePost$ implements CreatePost$ {
  const _$CreatePost$(
      {required this.message, this.token, required this.response});

  @override
  final String message;
  @override
  final String? token;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'CreatePost(message: $message, token: $token, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePost$ &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $CreatePost$CopyWith<CreatePost$> get copyWith =>
      _$CreatePost$CopyWithImpl<CreatePost$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return $default(message, token, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, token, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePost$ value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePost$ value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreatePost$ implements CreatePost {
  const factory CreatePost$(
      {required String message,
      String? token,
      required void Function(AppAction) response}) = _$CreatePost$;

  String get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  void Function(AppAction) get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePost$CopyWith<CreatePost$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostSuccessfulCopyWith<$Res> {
  factory $CreatePostSuccessfulCopyWith(CreatePostSuccessful value,
          $Res Function(CreatePostSuccessful) then) =
      _$CreatePostSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostSuccessfulCopyWithImpl<$Res>
    extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostSuccessfulCopyWith<$Res> {
  _$CreatePostSuccessfulCopyWithImpl(
      CreatePostSuccessful _value, $Res Function(CreatePostSuccessful) _then)
      : super(_value, (v) => _then(v as CreatePostSuccessful));

  @override
  CreatePostSuccessful get _value => super._value as CreatePostSuccessful;
}

/// @nodoc
class _$CreatePostSuccessful implements CreatePostSuccessful {
  const _$CreatePostSuccessful();

  @override
  String toString() {
    return 'CreatePost.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatePostSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePost$ value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePost$ value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreatePostSuccessful implements CreatePost {
  const factory CreatePostSuccessful() = _$CreatePostSuccessful;
}

/// @nodoc
abstract class $CreatePostErrorCopyWith<$Res> {
  factory $CreatePostErrorCopyWith(
          CreatePostError value, $Res Function(CreatePostError) then) =
      _$CreatePostErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreatePostErrorCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostErrorCopyWith<$Res> {
  _$CreatePostErrorCopyWithImpl(
      CreatePostError _value, $Res Function(CreatePostError) _then)
      : super(_value, (v) => _then(v as CreatePostError));

  @override
  CreatePostError get _value => super._value as CreatePostError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CreatePostError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreatePostError implements CreatePostError {
  const _$CreatePostError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreatePost.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePostError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $CreatePostErrorCopyWith<CreatePostError> get copyWith =>
      _$CreatePostErrorCopyWithImpl<CreatePostError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)
        $default, {
    required TResult Function() successful,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, String? token, void Function(AppAction) response)?
        $default, {
    TResult Function()? successful,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreatePost$ value) $default, {
    required TResult Function(CreatePostSuccessful value) successful,
    required TResult Function(CreatePostError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreatePost$ value)? $default, {
    TResult Function(CreatePostSuccessful value)? successful,
    TResult Function(CreatePostError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreatePostError implements CreatePost, ErrorAction {
  const factory CreatePostError(Object error) = _$CreatePostError;

  Object get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostErrorCopyWith<CreatePostError> get copyWith =>
      throw _privateConstructorUsedError;
}
