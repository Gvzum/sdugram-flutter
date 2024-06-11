// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentoring_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MentoringRequestState {
  MentoringRequestStatus get mentoringStatus =>
      throw _privateConstructorUsedError;
  MentoringRequestNavigationStatus get navigation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentoringRequestStateCopyWith<MentoringRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringRequestStateCopyWith<$Res> {
  factory $MentoringRequestStateCopyWith(MentoringRequestState value,
          $Res Function(MentoringRequestState) then) =
      _$MentoringRequestStateCopyWithImpl<$Res, MentoringRequestState>;
  @useResult
  $Res call(
      {MentoringRequestStatus mentoringStatus,
      MentoringRequestNavigationStatus navigation});

  $MentoringRequestStatusCopyWith<$Res> get mentoringStatus;
  $MentoringRequestNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class _$MentoringRequestStateCopyWithImpl<$Res,
        $Val extends MentoringRequestState>
    implements $MentoringRequestStateCopyWith<$Res> {
  _$MentoringRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentoringStatus = null,
    Object? navigation = null,
  }) {
    return _then(_value.copyWith(
      mentoringStatus: null == mentoringStatus
          ? _value.mentoringStatus
          : mentoringStatus // ignore: cast_nullable_to_non_nullable
              as MentoringRequestStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringRequestNavigationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringRequestStatusCopyWith<$Res> get mentoringStatus {
    return $MentoringRequestStatusCopyWith<$Res>(_value.mentoringStatus,
        (value) {
      return _then(_value.copyWith(mentoringStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringRequestNavigationStatusCopyWith<$Res> get navigation {
    return $MentoringRequestNavigationStatusCopyWith<$Res>(_value.navigation,
        (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MentoringRequestStateImplCopyWith<$Res>
    implements $MentoringRequestStateCopyWith<$Res> {
  factory _$$MentoringRequestStateImplCopyWith(
          _$MentoringRequestStateImpl value,
          $Res Function(_$MentoringRequestStateImpl) then) =
      __$$MentoringRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MentoringRequestStatus mentoringStatus,
      MentoringRequestNavigationStatus navigation});

  @override
  $MentoringRequestStatusCopyWith<$Res> get mentoringStatus;
  @override
  $MentoringRequestNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class __$$MentoringRequestStateImplCopyWithImpl<$Res>
    extends _$MentoringRequestStateCopyWithImpl<$Res,
        _$MentoringRequestStateImpl>
    implements _$$MentoringRequestStateImplCopyWith<$Res> {
  __$$MentoringRequestStateImplCopyWithImpl(_$MentoringRequestStateImpl _value,
      $Res Function(_$MentoringRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentoringStatus = null,
    Object? navigation = null,
  }) {
    return _then(_$MentoringRequestStateImpl(
      mentoringStatus: null == mentoringStatus
          ? _value.mentoringStatus
          : mentoringStatus // ignore: cast_nullable_to_non_nullable
              as MentoringRequestStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringRequestNavigationStatus,
    ));
  }
}

/// @nodoc

class _$MentoringRequestStateImpl implements _MentoringRequestState {
  const _$MentoringRequestStateImpl(
      {this.mentoringStatus = const MentoringRequestInitial(),
      this.navigation = const MentoringRequestNavigationInitial()});

  @override
  @JsonKey()
  final MentoringRequestStatus mentoringStatus;
  @override
  @JsonKey()
  final MentoringRequestNavigationStatus navigation;

  @override
  String toString() {
    return 'MentoringRequestState(mentoringStatus: $mentoringStatus, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestStateImpl &&
            (identical(other.mentoringStatus, mentoringStatus) ||
                other.mentoringStatus == mentoringStatus) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mentoringStatus, navigation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringRequestStateImplCopyWith<_$MentoringRequestStateImpl>
      get copyWith => __$$MentoringRequestStateImplCopyWithImpl<
          _$MentoringRequestStateImpl>(this, _$identity);
}

abstract class _MentoringRequestState implements MentoringRequestState {
  const factory _MentoringRequestState(
          {final MentoringRequestStatus mentoringStatus,
          final MentoringRequestNavigationStatus navigation}) =
      _$MentoringRequestStateImpl;

  @override
  MentoringRequestStatus get mentoringStatus;
  @override
  MentoringRequestNavigationStatus get navigation;
  @override
  @JsonKey(ignore: true)
  _$$MentoringRequestStateImplCopyWith<_$MentoringRequestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentoringRequestStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringRequestStatusCopyWith<$Res> {
  factory $MentoringRequestStatusCopyWith(MentoringRequestStatus value,
          $Res Function(MentoringRequestStatus) then) =
      _$MentoringRequestStatusCopyWithImpl<$Res, MentoringRequestStatus>;
}

/// @nodoc
class _$MentoringRequestStatusCopyWithImpl<$Res,
        $Val extends MentoringRequestStatus>
    implements $MentoringRequestStatusCopyWith<$Res> {
  _$MentoringRequestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringRequestInitialImplCopyWith<$Res> {
  factory _$$MentoringRequestInitialImplCopyWith(
          _$MentoringRequestInitialImpl value,
          $Res Function(_$MentoringRequestInitialImpl) then) =
      __$$MentoringRequestInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestInitialImplCopyWithImpl<$Res>
    extends _$MentoringRequestStatusCopyWithImpl<$Res,
        _$MentoringRequestInitialImpl>
    implements _$$MentoringRequestInitialImplCopyWith<$Res> {
  __$$MentoringRequestInitialImplCopyWithImpl(
      _$MentoringRequestInitialImpl _value,
      $Res Function(_$MentoringRequestInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestInitialImpl implements MentoringRequestInitial {
  const _$MentoringRequestInitialImpl();

  @override
  String toString() {
    return 'MentoringRequestStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
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
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestInitial implements MentoringRequestStatus {
  const factory MentoringRequestInitial() = _$MentoringRequestInitialImpl;
}

/// @nodoc
abstract class _$$MentoringRequestLoadingImplCopyWith<$Res> {
  factory _$$MentoringRequestLoadingImplCopyWith(
          _$MentoringRequestLoadingImpl value,
          $Res Function(_$MentoringRequestLoadingImpl) then) =
      __$$MentoringRequestLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestLoadingImplCopyWithImpl<$Res>
    extends _$MentoringRequestStatusCopyWithImpl<$Res,
        _$MentoringRequestLoadingImpl>
    implements _$$MentoringRequestLoadingImplCopyWith<$Res> {
  __$$MentoringRequestLoadingImplCopyWithImpl(
      _$MentoringRequestLoadingImpl _value,
      $Res Function(_$MentoringRequestLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestLoadingImpl implements MentoringRequestLoading {
  const _$MentoringRequestLoadingImpl();

  @override
  String toString() {
    return 'MentoringRequestStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
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
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestLoading implements MentoringRequestStatus {
  const factory MentoringRequestLoading() = _$MentoringRequestLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringRequestFailureImplCopyWith<$Res> {
  factory _$$MentoringRequestFailureImplCopyWith(
          _$MentoringRequestFailureImpl value,
          $Res Function(_$MentoringRequestFailureImpl) then) =
      __$$MentoringRequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MentoringRequestFailureImplCopyWithImpl<$Res>
    extends _$MentoringRequestStatusCopyWithImpl<$Res,
        _$MentoringRequestFailureImpl>
    implements _$$MentoringRequestFailureImplCopyWith<$Res> {
  __$$MentoringRequestFailureImplCopyWithImpl(
      _$MentoringRequestFailureImpl _value,
      $Res Function(_$MentoringRequestFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MentoringRequestFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MentoringRequestFailureImpl implements MentoringRequestFailure {
  const _$MentoringRequestFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MentoringRequestStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringRequestFailureImplCopyWith<_$MentoringRequestFailureImpl>
      get copyWith => __$$MentoringRequestFailureImplCopyWithImpl<
          _$MentoringRequestFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
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
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestFailure implements MentoringRequestStatus {
  const factory MentoringRequestFailure(final Failure failure) =
      _$MentoringRequestFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$MentoringRequestFailureImplCopyWith<_$MentoringRequestFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringRequestEmptySuccessImplCopyWith<$Res> {
  factory _$$MentoringRequestEmptySuccessImplCopyWith(
          _$MentoringRequestEmptySuccessImpl value,
          $Res Function(_$MentoringRequestEmptySuccessImpl) then) =
      __$$MentoringRequestEmptySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestEmptySuccessImplCopyWithImpl<$Res>
    extends _$MentoringRequestStatusCopyWithImpl<$Res,
        _$MentoringRequestEmptySuccessImpl>
    implements _$$MentoringRequestEmptySuccessImplCopyWith<$Res> {
  __$$MentoringRequestEmptySuccessImplCopyWithImpl(
      _$MentoringRequestEmptySuccessImpl _value,
      $Res Function(_$MentoringRequestEmptySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestEmptySuccessImpl
    implements MentoringRequestEmptySuccess {
  const _$MentoringRequestEmptySuccessImpl();

  @override
  String toString() {
    return 'MentoringRequestStatus.emptySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestEmptySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) {
    return emptySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) {
    return emptySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
    required TResult orElse(),
  }) {
    if (emptySuccess != null) {
      return emptySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) {
    return emptySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) {
    return emptySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (emptySuccess != null) {
      return emptySuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestEmptySuccess implements MentoringRequestStatus {
  const factory MentoringRequestEmptySuccess() =
      _$MentoringRequestEmptySuccessImpl;
}

/// @nodoc
abstract class _$$MentoringRequestSuccessImplCopyWith<$Res> {
  factory _$$MentoringRequestSuccessImplCopyWith(
          _$MentoringRequestSuccessImpl value,
          $Res Function(_$MentoringRequestSuccessImpl) then) =
      __$$MentoringRequestSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MenteeRequestModel> listMentee});
}

/// @nodoc
class __$$MentoringRequestSuccessImplCopyWithImpl<$Res>
    extends _$MentoringRequestStatusCopyWithImpl<$Res,
        _$MentoringRequestSuccessImpl>
    implements _$$MentoringRequestSuccessImplCopyWith<$Res> {
  __$$MentoringRequestSuccessImplCopyWithImpl(
      _$MentoringRequestSuccessImpl _value,
      $Res Function(_$MentoringRequestSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listMentee = null,
  }) {
    return _then(_$MentoringRequestSuccessImpl(
      null == listMentee
          ? _value._listMentee
          : listMentee // ignore: cast_nullable_to_non_nullable
              as List<MenteeRequestModel>,
    ));
  }
}

/// @nodoc

class _$MentoringRequestSuccessImpl implements MentoringRequestSuccess {
  const _$MentoringRequestSuccessImpl(final List<MenteeRequestModel> listMentee)
      : _listMentee = listMentee;

  final List<MenteeRequestModel> _listMentee;
  @override
  List<MenteeRequestModel> get listMentee {
    if (_listMentee is EqualUnmodifiableListView) return _listMentee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMentee);
  }

  @override
  String toString() {
    return 'MentoringRequestStatus.success(listMentee: $listMentee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listMentee, _listMentee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listMentee));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringRequestSuccessImplCopyWith<_$MentoringRequestSuccessImpl>
      get copyWith => __$$MentoringRequestSuccessImplCopyWithImpl<
          _$MentoringRequestSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) {
    return success(listMentee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) {
    return success?.call(listMentee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listMentee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringRequestInitial value) initial,
    required TResult Function(MentoringRequestLoading value) loading,
    required TResult Function(MentoringRequestFailure value) failure,
    required TResult Function(MentoringRequestEmptySuccess value) emptySuccess,
    required TResult Function(MentoringRequestSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestInitial value)? initial,
    TResult? Function(MentoringRequestLoading value)? loading,
    TResult? Function(MentoringRequestFailure value)? failure,
    TResult? Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringRequestSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestInitial value)? initial,
    TResult Function(MentoringRequestLoading value)? loading,
    TResult Function(MentoringRequestFailure value)? failure,
    TResult Function(MentoringRequestEmptySuccess value)? emptySuccess,
    TResult Function(MentoringRequestSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestSuccess implements MentoringRequestStatus {
  const factory MentoringRequestSuccess(
          final List<MenteeRequestModel> listMentee) =
      _$MentoringRequestSuccessImpl;

  List<MenteeRequestModel> get listMentee;
  @JsonKey(ignore: true)
  _$$MentoringRequestSuccessImplCopyWith<_$MentoringRequestSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentoringRequestNavigationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
    required TResult Function() sendRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
    TResult? Function()? sendRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    TResult Function()? sendRequestSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringRequestNavigationStatusCopyWith<$Res> {
  factory $MentoringRequestNavigationStatusCopyWith(
          MentoringRequestNavigationStatus value,
          $Res Function(MentoringRequestNavigationStatus) then) =
      _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
          MentoringRequestNavigationStatus>;
}

/// @nodoc
class _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        $Val extends MentoringRequestNavigationStatus>
    implements $MentoringRequestNavigationStatusCopyWith<$Res> {
  _$MentoringRequestNavigationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringRequestNavigationInitialImplCopyWith<$Res> {
  factory _$$MentoringRequestNavigationInitialImplCopyWith(
          _$MentoringRequestNavigationInitialImpl value,
          $Res Function(_$MentoringRequestNavigationInitialImpl) then) =
      __$$MentoringRequestNavigationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestNavigationInitialImplCopyWithImpl<$Res>
    extends _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        _$MentoringRequestNavigationInitialImpl>
    implements _$$MentoringRequestNavigationInitialImplCopyWith<$Res> {
  __$$MentoringRequestNavigationInitialImplCopyWithImpl(
      _$MentoringRequestNavigationInitialImpl _value,
      $Res Function(_$MentoringRequestNavigationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestNavigationInitialImpl
    implements MentoringRequestNavigationInitial {
  const _$MentoringRequestNavigationInitialImpl();

  @override
  String toString() {
    return 'MentoringRequestNavigationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestNavigationInitialImpl);
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
    required TResult Function() sendRequestSuccess,
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
    TResult? Function()? sendRequestSuccess,
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
    TResult Function()? sendRequestSuccess,
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
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestNavigationInitial
    implements MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationInitial() =
      _$MentoringRequestNavigationInitialImpl;
}

/// @nodoc
abstract class _$$MentoringRequestNavigationLoadingImplCopyWith<$Res> {
  factory _$$MentoringRequestNavigationLoadingImplCopyWith(
          _$MentoringRequestNavigationLoadingImpl value,
          $Res Function(_$MentoringRequestNavigationLoadingImpl) then) =
      __$$MentoringRequestNavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestNavigationLoadingImplCopyWithImpl<$Res>
    extends _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        _$MentoringRequestNavigationLoadingImpl>
    implements _$$MentoringRequestNavigationLoadingImplCopyWith<$Res> {
  __$$MentoringRequestNavigationLoadingImplCopyWithImpl(
      _$MentoringRequestNavigationLoadingImpl _value,
      $Res Function(_$MentoringRequestNavigationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestNavigationLoadingImpl
    implements MentoringRequestNavigationLoading {
  const _$MentoringRequestNavigationLoadingImpl();

  @override
  String toString() {
    return 'MentoringRequestNavigationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestNavigationLoadingImpl);
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
    required TResult Function() sendRequestSuccess,
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
    TResult? Function()? sendRequestSuccess,
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
    TResult Function()? sendRequestSuccess,
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
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestNavigationLoading
    implements MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationLoading() =
      _$MentoringRequestNavigationLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringRequestNavigationFailureImplCopyWith<$Res> {
  factory _$$MentoringRequestNavigationFailureImplCopyWith(
          _$MentoringRequestNavigationFailureImpl value,
          $Res Function(_$MentoringRequestNavigationFailureImpl) then) =
      __$$MentoringRequestNavigationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MentoringRequestNavigationFailureImplCopyWithImpl<$Res>
    extends _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        _$MentoringRequestNavigationFailureImpl>
    implements _$$MentoringRequestNavigationFailureImplCopyWith<$Res> {
  __$$MentoringRequestNavigationFailureImplCopyWithImpl(
      _$MentoringRequestNavigationFailureImpl _value,
      $Res Function(_$MentoringRequestNavigationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MentoringRequestNavigationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MentoringRequestNavigationFailureImpl
    implements MentoringRequestNavigationFailure {
  const _$MentoringRequestNavigationFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MentoringRequestNavigationStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestNavigationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringRequestNavigationFailureImplCopyWith<
          _$MentoringRequestNavigationFailureImpl>
      get copyWith => __$$MentoringRequestNavigationFailureImplCopyWithImpl<
          _$MentoringRequestNavigationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function() createSuccess,
    required TResult Function() sendRequestSuccess,
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
    TResult? Function()? sendRequestSuccess,
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
    TResult Function()? sendRequestSuccess,
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
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestNavigationFailure
    implements MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationFailure(final Failure failure) =
      _$MentoringRequestNavigationFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$MentoringRequestNavigationFailureImplCopyWith<
          _$MentoringRequestNavigationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringRequestNavigationCreateSuccessImplCopyWith<$Res> {
  factory _$$MentoringRequestNavigationCreateSuccessImplCopyWith(
          _$MentoringRequestNavigationCreateSuccessImpl value,
          $Res Function(_$MentoringRequestNavigationCreateSuccessImpl) then) =
      __$$MentoringRequestNavigationCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestNavigationCreateSuccessImplCopyWithImpl<$Res>
    extends _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        _$MentoringRequestNavigationCreateSuccessImpl>
    implements _$$MentoringRequestNavigationCreateSuccessImplCopyWith<$Res> {
  __$$MentoringRequestNavigationCreateSuccessImplCopyWithImpl(
      _$MentoringRequestNavigationCreateSuccessImpl _value,
      $Res Function(_$MentoringRequestNavigationCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestNavigationCreateSuccessImpl
    implements MentoringRequestNavigationCreateSuccess {
  const _$MentoringRequestNavigationCreateSuccessImpl();

  @override
  String toString() {
    return 'MentoringRequestNavigationStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestNavigationCreateSuccessImpl);
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
    required TResult Function() sendRequestSuccess,
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
    TResult? Function()? sendRequestSuccess,
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
    TResult Function()? sendRequestSuccess,
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
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestNavigationCreateSuccess
    implements MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationCreateSuccess() =
      _$MentoringRequestNavigationCreateSuccessImpl;
}

/// @nodoc
abstract class _$$MentoringRequestNavigationSendRequestSuccessImplCopyWith<
    $Res> {
  factory _$$MentoringRequestNavigationSendRequestSuccessImplCopyWith(
          _$MentoringRequestNavigationSendRequestSuccessImpl value,
          $Res Function(_$MentoringRequestNavigationSendRequestSuccessImpl)
              then) =
      __$$MentoringRequestNavigationSendRequestSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringRequestNavigationSendRequestSuccessImplCopyWithImpl<$Res>
    extends _$MentoringRequestNavigationStatusCopyWithImpl<$Res,
        _$MentoringRequestNavigationSendRequestSuccessImpl>
    implements
        _$$MentoringRequestNavigationSendRequestSuccessImplCopyWith<$Res> {
  __$$MentoringRequestNavigationSendRequestSuccessImplCopyWithImpl(
      _$MentoringRequestNavigationSendRequestSuccessImpl _value,
      $Res Function(_$MentoringRequestNavigationSendRequestSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringRequestNavigationSendRequestSuccessImpl
    implements MentoringRequestNavigationSendRequestSuccess {
  const _$MentoringRequestNavigationSendRequestSuccessImpl();

  @override
  String toString() {
    return 'MentoringRequestNavigationStatus.sendRequestSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringRequestNavigationSendRequestSuccessImpl);
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
    required TResult Function() sendRequestSuccess,
  }) {
    return sendRequestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function()? createSuccess,
    TResult? Function()? sendRequestSuccess,
  }) {
    return sendRequestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function()? createSuccess,
    TResult Function()? sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (sendRequestSuccess != null) {
      return sendRequestSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringRequestNavigationInitial value) initial,
    required TResult Function(MentoringRequestNavigationLoading value) loading,
    required TResult Function(MentoringRequestNavigationFailure value) failure,
    required TResult Function(MentoringRequestNavigationCreateSuccess value)
        createSuccess,
    required TResult Function(
            MentoringRequestNavigationSendRequestSuccess value)
        sendRequestSuccess,
  }) {
    return sendRequestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringRequestNavigationInitial value)? initial,
    TResult? Function(MentoringRequestNavigationLoading value)? loading,
    TResult? Function(MentoringRequestNavigationFailure value)? failure,
    TResult? Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult? Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
  }) {
    return sendRequestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringRequestNavigationInitial value)? initial,
    TResult Function(MentoringRequestNavigationLoading value)? loading,
    TResult Function(MentoringRequestNavigationFailure value)? failure,
    TResult Function(MentoringRequestNavigationCreateSuccess value)?
        createSuccess,
    TResult Function(MentoringRequestNavigationSendRequestSuccess value)?
        sendRequestSuccess,
    required TResult orElse(),
  }) {
    if (sendRequestSuccess != null) {
      return sendRequestSuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringRequestNavigationSendRequestSuccess
    implements MentoringRequestNavigationStatus {
  const factory MentoringRequestNavigationSendRequestSuccess() =
      _$MentoringRequestNavigationSendRequestSuccessImpl;
}
