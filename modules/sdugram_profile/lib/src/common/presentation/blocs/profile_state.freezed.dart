// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  ProfileStatus get profileStatus => throw _privateConstructorUsedError;
  ProfileNavigationStatus get navigation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({ProfileStatus profileStatus, ProfileNavigationStatus navigation});

  $ProfileStatusCopyWith<$Res> get profileStatus;
  $ProfileNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStatus = null,
    Object? navigation = null,
  }) {
    return _then(_value.copyWith(
      profileStatus: null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ProfileNavigationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatusCopyWith<$Res> get profileStatus {
    return $ProfileStatusCopyWith<$Res>(_value.profileStatus, (value) {
      return _then(_value.copyWith(profileStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileNavigationStatusCopyWith<$Res> get navigation {
    return $ProfileNavigationStatusCopyWith<$Res>(_value.navigation, (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileStatus profileStatus, ProfileNavigationStatus navigation});

  @override
  $ProfileStatusCopyWith<$Res> get profileStatus;
  @override
  $ProfileNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileStatus = null,
    Object? navigation = null,
  }) {
    return _then(_$ProfileStateImpl(
      profileStatus: null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ProfileNavigationStatus,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.profileStatus = const ProfileInitial(),
      this.navigation = const ProfileNavigationInitial()});

  @override
  @JsonKey()
  final ProfileStatus profileStatus;
  @override
  @JsonKey()
  final ProfileNavigationStatus navigation;

  @override
  String toString() {
    return 'ProfileState(profileStatus: $profileStatus, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileStatus, navigation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ProfileStatus profileStatus,
      final ProfileNavigationStatus navigation}) = _$ProfileStateImpl;

  @override
  ProfileStatus get profileStatus;
  @override
  ProfileNavigationStatus get navigation;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(CoreUserDataModel user) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(CoreUserDataModel user)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(CoreUserDataModel user)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
    required TResult Function(ProfileSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFailure value)? failure,
    TResult? Function(ProfileSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    TResult Function(ProfileSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatusCopyWith<$Res> {
  factory $ProfileStatusCopyWith(
          ProfileStatus value, $Res Function(ProfileStatus) then) =
      _$ProfileStatusCopyWithImpl<$Res, ProfileStatus>;
}

/// @nodoc
class _$ProfileStatusCopyWithImpl<$Res, $Val extends ProfileStatus>
    implements $ProfileStatusCopyWith<$Res> {
  _$ProfileStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInitialImplCopyWith<$Res> {
  factory _$$ProfileInitialImplCopyWith(_$ProfileInitialImpl value,
          $Res Function(_$ProfileInitialImpl) then) =
      __$$ProfileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileInitialImpl>
    implements _$$ProfileInitialImplCopyWith<$Res> {
  __$$ProfileInitialImplCopyWithImpl(
      _$ProfileInitialImpl _value, $Res Function(_$ProfileInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInitialImpl implements ProfileInitial {
  const _$ProfileInitialImpl();

  @override
  String toString() {
    return 'ProfileStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(CoreUserDataModel user) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(CoreUserDataModel user)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(CoreUserDataModel user)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
    required TResult Function(ProfileSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFailure value)? failure,
    TResult? Function(ProfileSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    TResult Function(ProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial implements ProfileStatus {
  const factory ProfileInitial() = _$ProfileInitialImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(CoreUserDataModel user) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(CoreUserDataModel user)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(CoreUserDataModel user)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
    required TResult Function(ProfileSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFailure value)? failure,
    TResult? Function(ProfileSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    TResult Function(ProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileStatus {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileFailureImplCopyWith<$Res> {
  factory _$$ProfileFailureImplCopyWith(_$ProfileFailureImpl value,
          $Res Function(_$ProfileFailureImpl) then) =
      __$$ProfileFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ProfileFailureImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileFailureImpl>
    implements _$$ProfileFailureImplCopyWith<$Res> {
  __$$ProfileFailureImplCopyWithImpl(
      _$ProfileFailureImpl _value, $Res Function(_$ProfileFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ProfileFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ProfileFailureImpl implements ProfileFailure {
  const _$ProfileFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProfileStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFailureImplCopyWith<_$ProfileFailureImpl> get copyWith =>
      __$$ProfileFailureImplCopyWithImpl<_$ProfileFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(CoreUserDataModel user) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(CoreUserDataModel user)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(CoreUserDataModel user)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
    required TResult Function(ProfileSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFailure value)? failure,
    TResult? Function(ProfileSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    TResult Function(ProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileFailure implements ProfileStatus {
  const factory ProfileFailure(final Failure failure) = _$ProfileFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ProfileFailureImplCopyWith<_$ProfileFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileSuccessImplCopyWith<$Res> {
  factory _$$ProfileSuccessImplCopyWith(_$ProfileSuccessImpl value,
          $Res Function(_$ProfileSuccessImpl) then) =
      __$$ProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoreUserDataModel user});
}

/// @nodoc
class __$$ProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStatusCopyWithImpl<$Res, _$ProfileSuccessImpl>
    implements _$$ProfileSuccessImplCopyWith<$Res> {
  __$$ProfileSuccessImplCopyWithImpl(
      _$ProfileSuccessImpl _value, $Res Function(_$ProfileSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CoreUserDataModel,
    ));
  }
}

/// @nodoc

class _$ProfileSuccessImpl implements ProfileSuccess {
  const _$ProfileSuccessImpl(this.user);

  @override
  final CoreUserDataModel user;

  @override
  String toString() {
    return 'ProfileStatus.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      __$$ProfileSuccessImplCopyWithImpl<_$ProfileSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(CoreUserDataModel user) success,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(CoreUserDataModel user)? success,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(CoreUserDataModel user)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
    required TResult Function(ProfileSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileFailure value)? failure,
    TResult? Function(ProfileSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    TResult Function(ProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccess implements ProfileStatus {
  const factory ProfileSuccess(final CoreUserDataModel user) =
      _$ProfileSuccessImpl;

  CoreUserDataModel get user;
  @JsonKey(ignore: true)
  _$$ProfileSuccessImplCopyWith<_$ProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileNavigationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileNavigationInitial value) initial,
    required TResult Function(ProfileNavigationLoading value) loading,
    required TResult Function(ProfileNavigationFailure value) failure,
    required TResult Function(ProfileNavigationCreateSuccess value)
        createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileNavigationInitial value)? initial,
    TResult? Function(ProfileNavigationLoading value)? loading,
    TResult? Function(ProfileNavigationFailure value)? failure,
    TResult? Function(ProfileNavigationCreateSuccess value)? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileNavigationInitial value)? initial,
    TResult Function(ProfileNavigationLoading value)? loading,
    TResult Function(ProfileNavigationFailure value)? failure,
    TResult Function(ProfileNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileNavigationStatusCopyWith<$Res> {
  factory $ProfileNavigationStatusCopyWith(ProfileNavigationStatus value,
          $Res Function(ProfileNavigationStatus) then) =
      _$ProfileNavigationStatusCopyWithImpl<$Res, ProfileNavigationStatus>;
}

/// @nodoc
class _$ProfileNavigationStatusCopyWithImpl<$Res,
        $Val extends ProfileNavigationStatus>
    implements $ProfileNavigationStatusCopyWith<$Res> {
  _$ProfileNavigationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileNavigationInitialImplCopyWith<$Res> {
  factory _$$ProfileNavigationInitialImplCopyWith(
          _$ProfileNavigationInitialImpl value,
          $Res Function(_$ProfileNavigationInitialImpl) then) =
      __$$ProfileNavigationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileNavigationInitialImplCopyWithImpl<$Res>
    extends _$ProfileNavigationStatusCopyWithImpl<$Res,
        _$ProfileNavigationInitialImpl>
    implements _$$ProfileNavigationInitialImplCopyWith<$Res> {
  __$$ProfileNavigationInitialImplCopyWithImpl(
      _$ProfileNavigationInitialImpl _value,
      $Res Function(_$ProfileNavigationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileNavigationInitialImpl implements ProfileNavigationInitial {
  const _$ProfileNavigationInitialImpl();

  @override
  String toString() {
    return 'ProfileNavigationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNavigationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileNavigationInitial value) initial,
    required TResult Function(ProfileNavigationLoading value) loading,
    required TResult Function(ProfileNavigationFailure value) failure,
    required TResult Function(ProfileNavigationCreateSuccess value)
        createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileNavigationInitial value)? initial,
    TResult? Function(ProfileNavigationLoading value)? loading,
    TResult? Function(ProfileNavigationFailure value)? failure,
    TResult? Function(ProfileNavigationCreateSuccess value)? createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileNavigationInitial value)? initial,
    TResult Function(ProfileNavigationLoading value)? loading,
    TResult Function(ProfileNavigationFailure value)? failure,
    TResult Function(ProfileNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileNavigationInitial implements ProfileNavigationStatus {
  const factory ProfileNavigationInitial() = _$ProfileNavigationInitialImpl;
}

/// @nodoc
abstract class _$$ProfileNavigationLoadingImplCopyWith<$Res> {
  factory _$$ProfileNavigationLoadingImplCopyWith(
          _$ProfileNavigationLoadingImpl value,
          $Res Function(_$ProfileNavigationLoadingImpl) then) =
      __$$ProfileNavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileNavigationLoadingImplCopyWithImpl<$Res>
    extends _$ProfileNavigationStatusCopyWithImpl<$Res,
        _$ProfileNavigationLoadingImpl>
    implements _$$ProfileNavigationLoadingImplCopyWith<$Res> {
  __$$ProfileNavigationLoadingImplCopyWithImpl(
      _$ProfileNavigationLoadingImpl _value,
      $Res Function(_$ProfileNavigationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileNavigationLoadingImpl implements ProfileNavigationLoading {
  const _$ProfileNavigationLoadingImpl();

  @override
  String toString() {
    return 'ProfileNavigationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNavigationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileNavigationInitial value) initial,
    required TResult Function(ProfileNavigationLoading value) loading,
    required TResult Function(ProfileNavigationFailure value) failure,
    required TResult Function(ProfileNavigationCreateSuccess value)
        createSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileNavigationInitial value)? initial,
    TResult? Function(ProfileNavigationLoading value)? loading,
    TResult? Function(ProfileNavigationFailure value)? failure,
    TResult? Function(ProfileNavigationCreateSuccess value)? createSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileNavigationInitial value)? initial,
    TResult Function(ProfileNavigationLoading value)? loading,
    TResult Function(ProfileNavigationFailure value)? failure,
    TResult Function(ProfileNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileNavigationLoading implements ProfileNavigationStatus {
  const factory ProfileNavigationLoading() = _$ProfileNavigationLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileNavigationFailureImplCopyWith<$Res> {
  factory _$$ProfileNavigationFailureImplCopyWith(
          _$ProfileNavigationFailureImpl value,
          $Res Function(_$ProfileNavigationFailureImpl) then) =
      __$$ProfileNavigationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ProfileNavigationFailureImplCopyWithImpl<$Res>
    extends _$ProfileNavigationStatusCopyWithImpl<$Res,
        _$ProfileNavigationFailureImpl>
    implements _$$ProfileNavigationFailureImplCopyWith<$Res> {
  __$$ProfileNavigationFailureImplCopyWithImpl(
      _$ProfileNavigationFailureImpl _value,
      $Res Function(_$ProfileNavigationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ProfileNavigationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ProfileNavigationFailureImpl implements ProfileNavigationFailure {
  const _$ProfileNavigationFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ProfileNavigationStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNavigationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileNavigationFailureImplCopyWith<_$ProfileNavigationFailureImpl>
      get copyWith => __$$ProfileNavigationFailureImplCopyWithImpl<
          _$ProfileNavigationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileNavigationInitial value) initial,
    required TResult Function(ProfileNavigationLoading value) loading,
    required TResult Function(ProfileNavigationFailure value) failure,
    required TResult Function(ProfileNavigationCreateSuccess value)
        createSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileNavigationInitial value)? initial,
    TResult? Function(ProfileNavigationLoading value)? loading,
    TResult? Function(ProfileNavigationFailure value)? failure,
    TResult? Function(ProfileNavigationCreateSuccess value)? createSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileNavigationInitial value)? initial,
    TResult Function(ProfileNavigationLoading value)? loading,
    TResult Function(ProfileNavigationFailure value)? failure,
    TResult Function(ProfileNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileNavigationFailure implements ProfileNavigationStatus {
  const factory ProfileNavigationFailure(final Failure failure) =
      _$ProfileNavigationFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ProfileNavigationFailureImplCopyWith<_$ProfileNavigationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileNavigationCreateSuccessImplCopyWith<$Res> {
  factory _$$ProfileNavigationCreateSuccessImplCopyWith(
          _$ProfileNavigationCreateSuccessImpl value,
          $Res Function(_$ProfileNavigationCreateSuccessImpl) then) =
      __$$ProfileNavigationCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileNavigationCreateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileNavigationStatusCopyWithImpl<$Res,
        _$ProfileNavigationCreateSuccessImpl>
    implements _$$ProfileNavigationCreateSuccessImplCopyWith<$Res> {
  __$$ProfileNavigationCreateSuccessImplCopyWithImpl(
      _$ProfileNavigationCreateSuccessImpl _value,
      $Res Function(_$ProfileNavigationCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileNavigationCreateSuccessImpl
    implements ProfileNavigationCreateSuccess {
  const _$ProfileNavigationCreateSuccessImpl();

  @override
  String toString() {
    return 'ProfileNavigationStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileNavigationCreateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileNavigationInitial value) initial,
    required TResult Function(ProfileNavigationLoading value) loading,
    required TResult Function(ProfileNavigationFailure value) failure,
    required TResult Function(ProfileNavigationCreateSuccess value)
        createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileNavigationInitial value)? initial,
    TResult? Function(ProfileNavigationLoading value)? loading,
    TResult? Function(ProfileNavigationFailure value)? failure,
    TResult? Function(ProfileNavigationCreateSuccess value)? createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileNavigationInitial value)? initial,
    TResult Function(ProfileNavigationLoading value)? loading,
    TResult Function(ProfileNavigationFailure value)? failure,
    TResult Function(ProfileNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileNavigationCreateSuccess
    implements ProfileNavigationStatus {
  const factory ProfileNavigationCreateSuccess() =
      _$ProfileNavigationCreateSuccessImpl;
}
