part of posts_models;

abstract class Post implements Built<Post, PostBuilder> {
  factory Post([void Function(PostBuilder b) updates]) = _$Post;
  factory Post.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Post._();

  int get id;

  @BuiltValueField(wireName: 'user_id')
  int? get userId;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String get message;

  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Post> get serializer => _$postSerializer;
}
