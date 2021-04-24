part of auth_actions;

@freezed
abstract class Register with _$Register implements AppAction {
  const factory Register({required String username,required String displayName,required String password,required ActionResponse response}) = Register$;

  const factory Register.successful(AppUser user) = RegisterSuccessful;

  @Implements(ErrorAction)
  const factory Register.error(Object error) = RegisterError;
}
