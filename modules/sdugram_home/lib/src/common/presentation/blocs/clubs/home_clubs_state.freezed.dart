// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_clubs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeClubsState {
  HomeClubsStatus get clubsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeClubsStateCopyWith<HomeClubsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeClubsStateCopyWith<$Res> {
  factory $HomeClubsStateCopyWith(
          HomeClubsState value, $Res Function(HomeClubsState) then) =
      _$HomeClubsStateCopyWithImpl<$Res, HomeClubsState>;
  @useResult
  $Res call({HomeClubsStatus clubsStatus});

  $HomeClubsStatusCopyWith<$Res> get clubsStatus;
}

/// @nodoc
class _$HomeClubsStateCopyWithImpl<$Res, $Val extends HomeClubsState>
    implements $HomeClubsStateCopyWith<$Res> {
  _$HomeClubsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubsStatus = null,
  }) {
    return _then(_value.copyWith(
      clubsStatus: null == clubsStatus
          ? _value.clubsStatus
          : clubsStatus // ignore: cast_nullable_to_non_nullable
              as HomeClubsStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeClubsStatusCopyWith<$Res> get clubsStatus {
    return $HomeClubsStatusCopyWith<$Res>(_value.clubsStatus, (value) {
      return _then(_value.copyWith(clubsStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeClubsStateImplCopyWith<$Res>
    implements $HomeClubsStateCopyWith<$Res> {
  factory _$$HomeClubsStateImplCopyWith(_$HomeClubsStateImpl value,
          $Res Function(_$HomeClubsStateImpl) then) =
      __$$HomeClubsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeClubsStatus clubsStatus});

  @override
  $HomeClubsStatusCopyWith<$Res> get clubsStatus;
}

/// @nodoc
class __$$HomeClubsStateImplCopyWithImpl<$Res>
    extends _$HomeClubsStateCopyWithImpl<$Res, _$HomeClubsStateImpl>
    implements _$$HomeClubsStateImplCopyWith<$Res> {
  __$$HomeClubsStateImplCopyWithImpl(
      _$HomeClubsStateImpl _value, $Res Function(_$HomeClubsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubsStatus = null,
  }) {
    return _then(_$HomeClubsStateImpl(
      clubsStatus: null == clubsStatus
          ? _value.clubsStatus
          : clubsStatus // ignore: cast_nullable_to_non_nullable
              as HomeClubsStatus,
    ));
  }
}

/// @nodoc

class _$HomeClubsStateImpl implements _HomeClubsState {
  const _$HomeClubsStateImpl({this.clubsStatus = const HomeClubsInitial()});

  @override
  @JsonKey()
  final HomeClubsStatus clubsStatus;

  @override
  String toString() {
    return 'HomeClubsState(clubsStatus: $clubsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubsStateImpl &&
            (identical(other.clubsStatus, clubsStatus) ||
                other.clubsStatus == clubsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubsStateImplCopyWith<_$HomeClubsStateImpl> get copyWith =>
      __$$HomeClubsStateImplCopyWithImpl<_$HomeClubsStateImpl>(
          this, _$identity);
}

abstract class _HomeClubsState implements HomeClubsState {
  const factory _HomeClubsState({final HomeClubsStatus clubsStatus}) =
      _$HomeClubsStateImpl;

  @override
  HomeClubsStatus get clubsStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeClubsStateImplCopyWith<_$HomeClubsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeClubsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeClubsInitial value) initial,
    required TResult Function(HomeClubsLoading value) loading,
    required TResult Function(HomeClubsFailure value) failure,
    required TResult Function(HomeClubsSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubsInitial value)? initial,
    TResult? Function(HomeClubsLoading value)? loading,
    TResult? Function(HomeClubsFailure value)? failure,
    TResult? Function(HomeClubsSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubsInitial value)? initial,
    TResult Function(HomeClubsLoading value)? loading,
    TResult Function(HomeClubsFailure value)? failure,
    TResult Function(HomeClubsSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeClubsStatusCopyWith<$Res> {
  factory $HomeClubsStatusCopyWith(
          HomeClubsStatus value, $Res Function(HomeClubsStatus) then) =
      _$HomeClubsStatusCopyWithImpl<$Res, HomeClubsStatus>;
}

/// @nodoc
class _$HomeClubsStatusCopyWithImpl<$Res, $Val extends HomeClubsStatus>
    implements $HomeClubsStatusCopyWith<$Res> {
  _$HomeClubsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeClubsInitialImplCopyWith<$Res> {
  factory _$$HomeClubsInitialImplCopyWith(_$HomeClubsInitialImpl value,
          $Res Function(_$HomeClubsInitialImpl) then) =
      __$$HomeClubsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeClubsInitialImplCopyWithImpl<$Res>
    extends _$HomeClubsStatusCopyWithImpl<$Res, _$HomeClubsInitialImpl>
    implements _$$HomeClubsInitialImplCopyWith<$Res> {
  __$$HomeClubsInitialImplCopyWithImpl(_$HomeClubsInitialImpl _value,
      $Res Function(_$HomeClubsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeClubsInitialImpl implements HomeClubsInitial {
  const _$HomeClubsInitialImpl();

  @override
  String toString() {
    return 'HomeClubsStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeClubsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(HomeClubsInitial value) initial,
    required TResult Function(HomeClubsLoading value) loading,
    required TResult Function(HomeClubsFailure value) failure,
    required TResult Function(HomeClubsSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubsInitial value)? initial,
    TResult? Function(HomeClubsLoading value)? loading,
    TResult? Function(HomeClubsFailure value)? failure,
    TResult? Function(HomeClubsSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubsInitial value)? initial,
    TResult Function(HomeClubsLoading value)? loading,
    TResult Function(HomeClubsFailure value)? failure,
    TResult Function(HomeClubsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeClubsInitial implements HomeClubsStatus {
  const factory HomeClubsInitial() = _$HomeClubsInitialImpl;
}

/// @nodoc
abstract class _$$HomeClubsLoadingImplCopyWith<$Res> {
  factory _$$HomeClubsLoadingImplCopyWith(_$HomeClubsLoadingImpl value,
          $Res Function(_$HomeClubsLoadingImpl) then) =
      __$$HomeClubsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeClubsLoadingImplCopyWithImpl<$Res>
    extends _$HomeClubsStatusCopyWithImpl<$Res, _$HomeClubsLoadingImpl>
    implements _$$HomeClubsLoadingImplCopyWith<$Res> {
  __$$HomeClubsLoadingImplCopyWithImpl(_$HomeClubsLoadingImpl _value,
      $Res Function(_$HomeClubsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeClubsLoadingImpl implements HomeClubsLoading {
  const _$HomeClubsLoadingImpl();

  @override
  String toString() {
    return 'HomeClubsStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeClubsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(HomeClubsInitial value) initial,
    required TResult Function(HomeClubsLoading value) loading,
    required TResult Function(HomeClubsFailure value) failure,
    required TResult Function(HomeClubsSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubsInitial value)? initial,
    TResult? Function(HomeClubsLoading value)? loading,
    TResult? Function(HomeClubsFailure value)? failure,
    TResult? Function(HomeClubsSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubsInitial value)? initial,
    TResult Function(HomeClubsLoading value)? loading,
    TResult Function(HomeClubsFailure value)? failure,
    TResult Function(HomeClubsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeClubsLoading implements HomeClubsStatus {
  const factory HomeClubsLoading() = _$HomeClubsLoadingImpl;
}

/// @nodoc
abstract class _$$HomeClubsFailureImplCopyWith<$Res> {
  factory _$$HomeClubsFailureImplCopyWith(_$HomeClubsFailureImpl value,
          $Res Function(_$HomeClubsFailureImpl) then) =
      __$$HomeClubsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$HomeClubsFailureImplCopyWithImpl<$Res>
    extends _$HomeClubsStatusCopyWithImpl<$Res, _$HomeClubsFailureImpl>
    implements _$$HomeClubsFailureImplCopyWith<$Res> {
  __$$HomeClubsFailureImplCopyWithImpl(_$HomeClubsFailureImpl _value,
      $Res Function(_$HomeClubsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HomeClubsFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HomeClubsFailureImpl implements HomeClubsFailure {
  const _$HomeClubsFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HomeClubsStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubsFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubsFailureImplCopyWith<_$HomeClubsFailureImpl> get copyWith =>
      __$$HomeClubsFailureImplCopyWithImpl<_$HomeClubsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(HomeClubsInitial value) initial,
    required TResult Function(HomeClubsLoading value) loading,
    required TResult Function(HomeClubsFailure value) failure,
    required TResult Function(HomeClubsSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubsInitial value)? initial,
    TResult? Function(HomeClubsLoading value)? loading,
    TResult? Function(HomeClubsFailure value)? failure,
    TResult? Function(HomeClubsSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubsInitial value)? initial,
    TResult Function(HomeClubsLoading value)? loading,
    TResult Function(HomeClubsFailure value)? failure,
    TResult Function(HomeClubsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeClubsFailure implements HomeClubsStatus {
  const factory HomeClubsFailure(final Failure failure) =
      _$HomeClubsFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$HomeClubsFailureImplCopyWith<_$HomeClubsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeClubsSuccessImplCopyWith<$Res> {
  factory _$$HomeClubsSuccessImplCopyWith(_$HomeClubsSuccessImpl value,
          $Res Function(_$HomeClubsSuccessImpl) then) =
      __$$HomeClubsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserProfileModel> listClubs});
}

/// @nodoc
class __$$HomeClubsSuccessImplCopyWithImpl<$Res>
    extends _$HomeClubsStatusCopyWithImpl<$Res, _$HomeClubsSuccessImpl>
    implements _$$HomeClubsSuccessImplCopyWith<$Res> {
  __$$HomeClubsSuccessImplCopyWithImpl(_$HomeClubsSuccessImpl _value,
      $Res Function(_$HomeClubsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listClubs = null,
  }) {
    return _then(_$HomeClubsSuccessImpl(
      null == listClubs
          ? _value._listClubs
          : listClubs // ignore: cast_nullable_to_non_nullable
              as List<UserProfileModel>,
    ));
  }
}

/// @nodoc

class _$HomeClubsSuccessImpl implements HomeClubsSuccess {
  const _$HomeClubsSuccessImpl(final List<UserProfileModel> listClubs)
      : _listClubs = listClubs;

  final List<UserProfileModel> _listClubs;
  @override
  List<UserProfileModel> get listClubs {
    if (_listClubs is EqualUnmodifiableListView) return _listClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listClubs);
  }

  @override
  String toString() {
    return 'HomeClubsStatus.success(listClubs: $listClubs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listClubs, _listClubs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listClubs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubsSuccessImplCopyWith<_$HomeClubsSuccessImpl> get copyWith =>
      __$$HomeClubsSuccessImplCopyWithImpl<_$HomeClubsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
  }) {
    return success(listClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
  }) {
    return success?.call(listClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listClubs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeClubsInitial value) initial,
    required TResult Function(HomeClubsLoading value) loading,
    required TResult Function(HomeClubsFailure value) failure,
    required TResult Function(HomeClubsSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubsInitial value)? initial,
    TResult? Function(HomeClubsLoading value)? loading,
    TResult? Function(HomeClubsFailure value)? failure,
    TResult? Function(HomeClubsSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubsInitial value)? initial,
    TResult Function(HomeClubsLoading value)? loading,
    TResult Function(HomeClubsFailure value)? failure,
    TResult Function(HomeClubsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeClubsSuccess implements HomeClubsStatus {
  const factory HomeClubsSuccess(final List<UserProfileModel> listClubs) =
      _$HomeClubsSuccessImpl;

  List<UserProfileModel> get listClubs;
  @JsonKey(ignore: true)
  _$$HomeClubsSuccessImplCopyWith<_$HomeClubsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
