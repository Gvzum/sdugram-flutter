// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_club_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeClubDetailState {
  int get id => throw _privateConstructorUsedError;
  HomeClubDetailStatus get clubDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeClubDetailStateCopyWith<HomeClubDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeClubDetailStateCopyWith<$Res> {
  factory $HomeClubDetailStateCopyWith(
          HomeClubDetailState value, $Res Function(HomeClubDetailState) then) =
      _$HomeClubDetailStateCopyWithImpl<$Res, HomeClubDetailState>;
  @useResult
  $Res call({int id, HomeClubDetailStatus clubDetail});

  $HomeClubDetailStatusCopyWith<$Res> get clubDetail;
}

/// @nodoc
class _$HomeClubDetailStateCopyWithImpl<$Res, $Val extends HomeClubDetailState>
    implements $HomeClubDetailStateCopyWith<$Res> {
  _$HomeClubDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubDetail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubDetail: null == clubDetail
          ? _value.clubDetail
          : clubDetail // ignore: cast_nullable_to_non_nullable
              as HomeClubDetailStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeClubDetailStatusCopyWith<$Res> get clubDetail {
    return $HomeClubDetailStatusCopyWith<$Res>(_value.clubDetail, (value) {
      return _then(_value.copyWith(clubDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeClubDetailStateImplCopyWith<$Res>
    implements $HomeClubDetailStateCopyWith<$Res> {
  factory _$$HomeClubDetailStateImplCopyWith(_$HomeClubDetailStateImpl value,
          $Res Function(_$HomeClubDetailStateImpl) then) =
      __$$HomeClubDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, HomeClubDetailStatus clubDetail});

  @override
  $HomeClubDetailStatusCopyWith<$Res> get clubDetail;
}

/// @nodoc
class __$$HomeClubDetailStateImplCopyWithImpl<$Res>
    extends _$HomeClubDetailStateCopyWithImpl<$Res, _$HomeClubDetailStateImpl>
    implements _$$HomeClubDetailStateImplCopyWith<$Res> {
  __$$HomeClubDetailStateImplCopyWithImpl(_$HomeClubDetailStateImpl _value,
      $Res Function(_$HomeClubDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubDetail = null,
  }) {
    return _then(_$HomeClubDetailStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubDetail: null == clubDetail
          ? _value.clubDetail
          : clubDetail // ignore: cast_nullable_to_non_nullable
              as HomeClubDetailStatus,
    ));
  }
}

/// @nodoc

class _$HomeClubDetailStateImpl implements _HomeClubDetailState {
  const _$HomeClubDetailStateImpl(
      {required this.id, this.clubDetail = const HomeClubDetailInitial()});

  @override
  final int id;
  @override
  @JsonKey()
  final HomeClubDetailStatus clubDetail;

  @override
  String toString() {
    return 'HomeClubDetailState(id: $id, clubDetail: $clubDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubDetailStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubDetail, clubDetail) ||
                other.clubDetail == clubDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, clubDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubDetailStateImplCopyWith<_$HomeClubDetailStateImpl> get copyWith =>
      __$$HomeClubDetailStateImplCopyWithImpl<_$HomeClubDetailStateImpl>(
          this, _$identity);
}

abstract class _HomeClubDetailState implements HomeClubDetailState {
  const factory _HomeClubDetailState(
      {required final int id,
      final HomeClubDetailStatus clubDetail}) = _$HomeClubDetailStateImpl;

  @override
  int get id;
  @override
  HomeClubDetailStatus get clubDetail;
  @override
  @JsonKey(ignore: true)
  _$$HomeClubDetailStateImplCopyWith<_$HomeClubDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeClubDetailStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ClubDetailModel detail) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ClubDetailModel detail)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ClubDetailModel detail)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeClubDetailInitial value) initial,
    required TResult Function(HomeClubDetailLoading value) loading,
    required TResult Function(HomeClubDetailFailure value) failure,
    required TResult Function(HomeClubDetailSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubDetailInitial value)? initial,
    TResult? Function(HomeClubDetailLoading value)? loading,
    TResult? Function(HomeClubDetailFailure value)? failure,
    TResult? Function(HomeClubDetailSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubDetailInitial value)? initial,
    TResult Function(HomeClubDetailLoading value)? loading,
    TResult Function(HomeClubDetailFailure value)? failure,
    TResult Function(HomeClubDetailSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeClubDetailStatusCopyWith<$Res> {
  factory $HomeClubDetailStatusCopyWith(HomeClubDetailStatus value,
          $Res Function(HomeClubDetailStatus) then) =
      _$HomeClubDetailStatusCopyWithImpl<$Res, HomeClubDetailStatus>;
}

/// @nodoc
class _$HomeClubDetailStatusCopyWithImpl<$Res,
        $Val extends HomeClubDetailStatus>
    implements $HomeClubDetailStatusCopyWith<$Res> {
  _$HomeClubDetailStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeClubDetailInitialImplCopyWith<$Res> {
  factory _$$HomeClubDetailInitialImplCopyWith(
          _$HomeClubDetailInitialImpl value,
          $Res Function(_$HomeClubDetailInitialImpl) then) =
      __$$HomeClubDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeClubDetailInitialImplCopyWithImpl<$Res>
    extends _$HomeClubDetailStatusCopyWithImpl<$Res,
        _$HomeClubDetailInitialImpl>
    implements _$$HomeClubDetailInitialImplCopyWith<$Res> {
  __$$HomeClubDetailInitialImplCopyWithImpl(_$HomeClubDetailInitialImpl _value,
      $Res Function(_$HomeClubDetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeClubDetailInitialImpl implements HomeClubDetailInitial {
  const _$HomeClubDetailInitialImpl();

  @override
  String toString() {
    return 'HomeClubDetailStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ClubDetailModel detail) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ClubDetailModel detail)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ClubDetailModel detail)? success,
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
    required TResult Function(HomeClubDetailInitial value) initial,
    required TResult Function(HomeClubDetailLoading value) loading,
    required TResult Function(HomeClubDetailFailure value) failure,
    required TResult Function(HomeClubDetailSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubDetailInitial value)? initial,
    TResult? Function(HomeClubDetailLoading value)? loading,
    TResult? Function(HomeClubDetailFailure value)? failure,
    TResult? Function(HomeClubDetailSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubDetailInitial value)? initial,
    TResult Function(HomeClubDetailLoading value)? loading,
    TResult Function(HomeClubDetailFailure value)? failure,
    TResult Function(HomeClubDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeClubDetailInitial implements HomeClubDetailStatus {
  const factory HomeClubDetailInitial() = _$HomeClubDetailInitialImpl;
}

/// @nodoc
abstract class _$$HomeClubDetailLoadingImplCopyWith<$Res> {
  factory _$$HomeClubDetailLoadingImplCopyWith(
          _$HomeClubDetailLoadingImpl value,
          $Res Function(_$HomeClubDetailLoadingImpl) then) =
      __$$HomeClubDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeClubDetailLoadingImplCopyWithImpl<$Res>
    extends _$HomeClubDetailStatusCopyWithImpl<$Res,
        _$HomeClubDetailLoadingImpl>
    implements _$$HomeClubDetailLoadingImplCopyWith<$Res> {
  __$$HomeClubDetailLoadingImplCopyWithImpl(_$HomeClubDetailLoadingImpl _value,
      $Res Function(_$HomeClubDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeClubDetailLoadingImpl implements HomeClubDetailLoading {
  const _$HomeClubDetailLoadingImpl();

  @override
  String toString() {
    return 'HomeClubDetailStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ClubDetailModel detail) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ClubDetailModel detail)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ClubDetailModel detail)? success,
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
    required TResult Function(HomeClubDetailInitial value) initial,
    required TResult Function(HomeClubDetailLoading value) loading,
    required TResult Function(HomeClubDetailFailure value) failure,
    required TResult Function(HomeClubDetailSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubDetailInitial value)? initial,
    TResult? Function(HomeClubDetailLoading value)? loading,
    TResult? Function(HomeClubDetailFailure value)? failure,
    TResult? Function(HomeClubDetailSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubDetailInitial value)? initial,
    TResult Function(HomeClubDetailLoading value)? loading,
    TResult Function(HomeClubDetailFailure value)? failure,
    TResult Function(HomeClubDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeClubDetailLoading implements HomeClubDetailStatus {
  const factory HomeClubDetailLoading() = _$HomeClubDetailLoadingImpl;
}

/// @nodoc
abstract class _$$HomeClubDetailFailureImplCopyWith<$Res> {
  factory _$$HomeClubDetailFailureImplCopyWith(
          _$HomeClubDetailFailureImpl value,
          $Res Function(_$HomeClubDetailFailureImpl) then) =
      __$$HomeClubDetailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$HomeClubDetailFailureImplCopyWithImpl<$Res>
    extends _$HomeClubDetailStatusCopyWithImpl<$Res,
        _$HomeClubDetailFailureImpl>
    implements _$$HomeClubDetailFailureImplCopyWith<$Res> {
  __$$HomeClubDetailFailureImplCopyWithImpl(_$HomeClubDetailFailureImpl _value,
      $Res Function(_$HomeClubDetailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HomeClubDetailFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HomeClubDetailFailureImpl implements HomeClubDetailFailure {
  const _$HomeClubDetailFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HomeClubDetailStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubDetailFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubDetailFailureImplCopyWith<_$HomeClubDetailFailureImpl>
      get copyWith => __$$HomeClubDetailFailureImplCopyWithImpl<
          _$HomeClubDetailFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ClubDetailModel detail) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ClubDetailModel detail)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ClubDetailModel detail)? success,
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
    required TResult Function(HomeClubDetailInitial value) initial,
    required TResult Function(HomeClubDetailLoading value) loading,
    required TResult Function(HomeClubDetailFailure value) failure,
    required TResult Function(HomeClubDetailSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubDetailInitial value)? initial,
    TResult? Function(HomeClubDetailLoading value)? loading,
    TResult? Function(HomeClubDetailFailure value)? failure,
    TResult? Function(HomeClubDetailSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubDetailInitial value)? initial,
    TResult Function(HomeClubDetailLoading value)? loading,
    TResult Function(HomeClubDetailFailure value)? failure,
    TResult Function(HomeClubDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeClubDetailFailure implements HomeClubDetailStatus {
  const factory HomeClubDetailFailure(final Failure failure) =
      _$HomeClubDetailFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$HomeClubDetailFailureImplCopyWith<_$HomeClubDetailFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeClubDetailSuccessImplCopyWith<$Res> {
  factory _$$HomeClubDetailSuccessImplCopyWith(
          _$HomeClubDetailSuccessImpl value,
          $Res Function(_$HomeClubDetailSuccessImpl) then) =
      __$$HomeClubDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubDetailModel detail});
}

/// @nodoc
class __$$HomeClubDetailSuccessImplCopyWithImpl<$Res>
    extends _$HomeClubDetailStatusCopyWithImpl<$Res,
        _$HomeClubDetailSuccessImpl>
    implements _$$HomeClubDetailSuccessImplCopyWith<$Res> {
  __$$HomeClubDetailSuccessImplCopyWithImpl(_$HomeClubDetailSuccessImpl _value,
      $Res Function(_$HomeClubDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$HomeClubDetailSuccessImpl(
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as ClubDetailModel,
    ));
  }
}

/// @nodoc

class _$HomeClubDetailSuccessImpl implements HomeClubDetailSuccess {
  const _$HomeClubDetailSuccessImpl(this.detail);

  @override
  final ClubDetailModel detail;

  @override
  String toString() {
    return 'HomeClubDetailStatus.success(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeClubDetailSuccessImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeClubDetailSuccessImplCopyWith<_$HomeClubDetailSuccessImpl>
      get copyWith => __$$HomeClubDetailSuccessImplCopyWithImpl<
          _$HomeClubDetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ClubDetailModel detail) success,
  }) {
    return success(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ClubDetailModel detail)? success,
  }) {
    return success?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ClubDetailModel detail)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeClubDetailInitial value) initial,
    required TResult Function(HomeClubDetailLoading value) loading,
    required TResult Function(HomeClubDetailFailure value) failure,
    required TResult Function(HomeClubDetailSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeClubDetailInitial value)? initial,
    TResult? Function(HomeClubDetailLoading value)? loading,
    TResult? Function(HomeClubDetailFailure value)? failure,
    TResult? Function(HomeClubDetailSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeClubDetailInitial value)? initial,
    TResult Function(HomeClubDetailLoading value)? loading,
    TResult Function(HomeClubDetailFailure value)? failure,
    TResult Function(HomeClubDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeClubDetailSuccess implements HomeClubDetailStatus {
  const factory HomeClubDetailSuccess(final ClubDetailModel detail) =
      _$HomeClubDetailSuccessImpl;

  ClubDetailModel get detail;
  @JsonKey(ignore: true)
  _$$HomeClubDetailSuccessImplCopyWith<_$HomeClubDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
