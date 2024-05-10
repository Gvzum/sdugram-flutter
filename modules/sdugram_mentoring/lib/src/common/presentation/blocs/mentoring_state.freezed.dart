// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentoring_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MentoringState {
  MentoringStatus get mentoringStatus => throw _privateConstructorUsedError;
  MentoringNavigationStatus get navigation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentoringStateCopyWith<MentoringState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringStateCopyWith<$Res> {
  factory $MentoringStateCopyWith(
          MentoringState value, $Res Function(MentoringState) then) =
      _$MentoringStateCopyWithImpl<$Res, MentoringState>;
  @useResult
  $Res call(
      {MentoringStatus mentoringStatus, MentoringNavigationStatus navigation});

  $MentoringStatusCopyWith<$Res> get mentoringStatus;
  $MentoringNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class _$MentoringStateCopyWithImpl<$Res, $Val extends MentoringState>
    implements $MentoringStateCopyWith<$Res> {
  _$MentoringStateCopyWithImpl(this._value, this._then);

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
              as MentoringStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringNavigationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringStatusCopyWith<$Res> get mentoringStatus {
    return $MentoringStatusCopyWith<$Res>(_value.mentoringStatus, (value) {
      return _then(_value.copyWith(mentoringStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringNavigationStatusCopyWith<$Res> get navigation {
    return $MentoringNavigationStatusCopyWith<$Res>(_value.navigation, (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MentoringStateImplCopyWith<$Res>
    implements $MentoringStateCopyWith<$Res> {
  factory _$$MentoringStateImplCopyWith(_$MentoringStateImpl value,
          $Res Function(_$MentoringStateImpl) then) =
      __$$MentoringStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MentoringStatus mentoringStatus, MentoringNavigationStatus navigation});

  @override
  $MentoringStatusCopyWith<$Res> get mentoringStatus;
  @override
  $MentoringNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class __$$MentoringStateImplCopyWithImpl<$Res>
    extends _$MentoringStateCopyWithImpl<$Res, _$MentoringStateImpl>
    implements _$$MentoringStateImplCopyWith<$Res> {
  __$$MentoringStateImplCopyWithImpl(
      _$MentoringStateImpl _value, $Res Function(_$MentoringStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentoringStatus = null,
    Object? navigation = null,
  }) {
    return _then(_$MentoringStateImpl(
      mentoringStatus: null == mentoringStatus
          ? _value.mentoringStatus
          : mentoringStatus // ignore: cast_nullable_to_non_nullable
              as MentoringStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringNavigationStatus,
    ));
  }
}

/// @nodoc

class _$MentoringStateImpl implements _MentoringState {
  const _$MentoringStateImpl(
      {this.mentoringStatus = const MentoringInitial(),
      this.navigation = const MentoringNavigationInitial()});

  @override
  @JsonKey()
  final MentoringStatus mentoringStatus;
  @override
  @JsonKey()
  final MentoringNavigationStatus navigation;

  @override
  String toString() {
    return 'MentoringState(mentoringStatus: $mentoringStatus, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringStateImpl &&
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
  _$$MentoringStateImplCopyWith<_$MentoringStateImpl> get copyWith =>
      __$$MentoringStateImplCopyWithImpl<_$MentoringStateImpl>(
          this, _$identity);
}

abstract class _MentoringState implements MentoringState {
  const factory _MentoringState(
      {final MentoringStatus mentoringStatus,
      final MentoringNavigationStatus navigation}) = _$MentoringStateImpl;

  @override
  MentoringStatus get mentoringStatus;
  @override
  MentoringNavigationStatus get navigation;
  @override
  @JsonKey(ignore: true)
  _$$MentoringStateImplCopyWith<_$MentoringStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentoringStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringStatusCopyWith<$Res> {
  factory $MentoringStatusCopyWith(
          MentoringStatus value, $Res Function(MentoringStatus) then) =
      _$MentoringStatusCopyWithImpl<$Res, MentoringStatus>;
}

/// @nodoc
class _$MentoringStatusCopyWithImpl<$Res, $Val extends MentoringStatus>
    implements $MentoringStatusCopyWith<$Res> {
  _$MentoringStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringInitialImplCopyWith<$Res> {
  factory _$$MentoringInitialImplCopyWith(_$MentoringInitialImpl value,
          $Res Function(_$MentoringInitialImpl) then) =
      __$$MentoringInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringInitialImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringInitialImpl>
    implements _$$MentoringInitialImplCopyWith<$Res> {
  __$$MentoringInitialImplCopyWithImpl(_$MentoringInitialImpl _value,
      $Res Function(_$MentoringInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringInitialImpl implements MentoringInitial {
  const _$MentoringInitialImpl();

  @override
  String toString() {
    return 'MentoringStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MentoringInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringInitial implements MentoringStatus {
  const factory MentoringInitial() = _$MentoringInitialImpl;
}

/// @nodoc
abstract class _$$MentoringLoadingImplCopyWith<$Res> {
  factory _$$MentoringLoadingImplCopyWith(_$MentoringLoadingImpl value,
          $Res Function(_$MentoringLoadingImpl) then) =
      __$$MentoringLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringLoadingImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringLoadingImpl>
    implements _$$MentoringLoadingImplCopyWith<$Res> {
  __$$MentoringLoadingImplCopyWithImpl(_$MentoringLoadingImpl _value,
      $Res Function(_$MentoringLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringLoadingImpl implements MentoringLoading {
  const _$MentoringLoadingImpl();

  @override
  String toString() {
    return 'MentoringStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MentoringLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringLoading implements MentoringStatus {
  const factory MentoringLoading() = _$MentoringLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringOverlayLoadingImplCopyWith<$Res> {
  factory _$$MentoringOverlayLoadingImplCopyWith(
          _$MentoringOverlayLoadingImpl value,
          $Res Function(_$MentoringOverlayLoadingImpl) then) =
      __$$MentoringOverlayLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringOverlayLoadingImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringOverlayLoadingImpl>
    implements _$$MentoringOverlayLoadingImplCopyWith<$Res> {
  __$$MentoringOverlayLoadingImplCopyWithImpl(
      _$MentoringOverlayLoadingImpl _value,
      $Res Function(_$MentoringOverlayLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringOverlayLoadingImpl implements MentoringOverlayLoading {
  const _$MentoringOverlayLoadingImpl();

  @override
  String toString() {
    return 'MentoringStatus.overlayLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringOverlayLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return overlayLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return overlayLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
    TResult Function()? createSuccess,
    required TResult orElse(),
  }) {
    if (overlayLoading != null) {
      return overlayLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return overlayLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return overlayLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (overlayLoading != null) {
      return overlayLoading(this);
    }
    return orElse();
  }
}

abstract class MentoringOverlayLoading implements MentoringStatus {
  const factory MentoringOverlayLoading() = _$MentoringOverlayLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringFailureImplCopyWith<$Res> {
  factory _$$MentoringFailureImplCopyWith(_$MentoringFailureImpl value,
          $Res Function(_$MentoringFailureImpl) then) =
      __$$MentoringFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MentoringFailureImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringFailureImpl>
    implements _$$MentoringFailureImplCopyWith<$Res> {
  __$$MentoringFailureImplCopyWithImpl(_$MentoringFailureImpl _value,
      $Res Function(_$MentoringFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MentoringFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MentoringFailureImpl implements MentoringFailure {
  const _$MentoringFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MentoringStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringFailureImplCopyWith<_$MentoringFailureImpl> get copyWith =>
      __$$MentoringFailureImplCopyWithImpl<_$MentoringFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MentoringFailure implements MentoringStatus {
  const factory MentoringFailure(final Failure failure) =
      _$MentoringFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$MentoringFailureImplCopyWith<_$MentoringFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringSuccessImplCopyWith<$Res> {
  factory _$$MentoringSuccessImplCopyWith(_$MentoringSuccessImpl value,
          $Res Function(_$MentoringSuccessImpl) then) =
      __$$MentoringSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserProfileModel> listClubs});
}

/// @nodoc
class __$$MentoringSuccessImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringSuccessImpl>
    implements _$$MentoringSuccessImplCopyWith<$Res> {
  __$$MentoringSuccessImplCopyWithImpl(_$MentoringSuccessImpl _value,
      $Res Function(_$MentoringSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listClubs = null,
  }) {
    return _then(_$MentoringSuccessImpl(
      null == listClubs
          ? _value._listClubs
          : listClubs // ignore: cast_nullable_to_non_nullable
              as List<UserProfileModel>,
    ));
  }
}

/// @nodoc

class _$MentoringSuccessImpl implements MentoringSuccess {
  const _$MentoringSuccessImpl(final List<UserProfileModel> listClubs)
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
    return 'MentoringStatus.success(listClubs: $listClubs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listClubs, _listClubs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listClubs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringSuccessImplCopyWith<_$MentoringSuccessImpl> get copyWith =>
      __$$MentoringSuccessImplCopyWithImpl<_$MentoringSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return success(listClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return success?.call(listClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
    TResult Function()? createSuccess,
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
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MentoringSuccess implements MentoringStatus {
  const factory MentoringSuccess(final List<UserProfileModel> listClubs) =
      _$MentoringSuccessImpl;

  List<UserProfileModel> get listClubs;
  @JsonKey(ignore: true)
  _$$MentoringSuccessImplCopyWith<_$MentoringSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringCreateSuccessImplCopyWith<$Res> {
  factory _$$MentoringCreateSuccessImplCopyWith(
          _$MentoringCreateSuccessImpl value,
          $Res Function(_$MentoringCreateSuccessImpl) then) =
      __$$MentoringCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringCreateSuccessImplCopyWithImpl<$Res>
    extends _$MentoringStatusCopyWithImpl<$Res, _$MentoringCreateSuccessImpl>
    implements _$$MentoringCreateSuccessImplCopyWith<$Res> {
  __$$MentoringCreateSuccessImplCopyWithImpl(
      _$MentoringCreateSuccessImpl _value,
      $Res Function(_$MentoringCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringCreateSuccessImpl implements MentoringCreateSuccess {
  const _$MentoringCreateSuccessImpl();

  @override
  String toString() {
    return 'MentoringStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringCreateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() overlayLoading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<UserProfileModel> listClubs) success,
    required TResult Function() createSuccess,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? overlayLoading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<UserProfileModel> listClubs)? success,
    TResult? Function()? createSuccess,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? overlayLoading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<UserProfileModel> listClubs)? success,
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
    required TResult Function(MentoringInitial value) initial,
    required TResult Function(MentoringLoading value) loading,
    required TResult Function(MentoringOverlayLoading value) overlayLoading,
    required TResult Function(MentoringFailure value) failure,
    required TResult Function(MentoringSuccess value) success,
    required TResult Function(MentoringCreateSuccess value) createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringInitial value)? initial,
    TResult? Function(MentoringLoading value)? loading,
    TResult? Function(MentoringOverlayLoading value)? overlayLoading,
    TResult? Function(MentoringFailure value)? failure,
    TResult? Function(MentoringSuccess value)? success,
    TResult? Function(MentoringCreateSuccess value)? createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringInitial value)? initial,
    TResult Function(MentoringLoading value)? loading,
    TResult Function(MentoringOverlayLoading value)? overlayLoading,
    TResult Function(MentoringFailure value)? failure,
    TResult Function(MentoringSuccess value)? success,
    TResult Function(MentoringCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringCreateSuccess implements MentoringStatus {
  const factory MentoringCreateSuccess() = _$MentoringCreateSuccessImpl;
}

/// @nodoc
mixin _$MentoringNavigationStatus {
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
    required TResult Function(MentoringNavigationInitial value) initial,
    required TResult Function(MentoringNavigationLoading value) loading,
    required TResult Function(MentoringNavigationFailure value) failure,
    required TResult Function(MentoringNavigationCreateSuccess value)
        createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringNavigationInitial value)? initial,
    TResult? Function(MentoringNavigationLoading value)? loading,
    TResult? Function(MentoringNavigationFailure value)? failure,
    TResult? Function(MentoringNavigationCreateSuccess value)? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringNavigationInitial value)? initial,
    TResult Function(MentoringNavigationLoading value)? loading,
    TResult Function(MentoringNavigationFailure value)? failure,
    TResult Function(MentoringNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringNavigationStatusCopyWith<$Res> {
  factory $MentoringNavigationStatusCopyWith(MentoringNavigationStatus value,
          $Res Function(MentoringNavigationStatus) then) =
      _$MentoringNavigationStatusCopyWithImpl<$Res, MentoringNavigationStatus>;
}

/// @nodoc
class _$MentoringNavigationStatusCopyWithImpl<$Res,
        $Val extends MentoringNavigationStatus>
    implements $MentoringNavigationStatusCopyWith<$Res> {
  _$MentoringNavigationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringNavigationInitialImplCopyWith<$Res> {
  factory _$$MentoringNavigationInitialImplCopyWith(
          _$MentoringNavigationInitialImpl value,
          $Res Function(_$MentoringNavigationInitialImpl) then) =
      __$$MentoringNavigationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringNavigationInitialImplCopyWithImpl<$Res>
    extends _$MentoringNavigationStatusCopyWithImpl<$Res,
        _$MentoringNavigationInitialImpl>
    implements _$$MentoringNavigationInitialImplCopyWith<$Res> {
  __$$MentoringNavigationInitialImplCopyWithImpl(
      _$MentoringNavigationInitialImpl _value,
      $Res Function(_$MentoringNavigationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringNavigationInitialImpl implements MentoringNavigationInitial {
  const _$MentoringNavigationInitialImpl();

  @override
  String toString() {
    return 'MentoringNavigationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringNavigationInitialImpl);
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
    required TResult Function(MentoringNavigationInitial value) initial,
    required TResult Function(MentoringNavigationLoading value) loading,
    required TResult Function(MentoringNavigationFailure value) failure,
    required TResult Function(MentoringNavigationCreateSuccess value)
        createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringNavigationInitial value)? initial,
    TResult? Function(MentoringNavigationLoading value)? loading,
    TResult? Function(MentoringNavigationFailure value)? failure,
    TResult? Function(MentoringNavigationCreateSuccess value)? createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringNavigationInitial value)? initial,
    TResult Function(MentoringNavigationLoading value)? loading,
    TResult Function(MentoringNavigationFailure value)? failure,
    TResult Function(MentoringNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringNavigationInitial implements MentoringNavigationStatus {
  const factory MentoringNavigationInitial() = _$MentoringNavigationInitialImpl;
}

/// @nodoc
abstract class _$$MentoringNavigationLoadingImplCopyWith<$Res> {
  factory _$$MentoringNavigationLoadingImplCopyWith(
          _$MentoringNavigationLoadingImpl value,
          $Res Function(_$MentoringNavigationLoadingImpl) then) =
      __$$MentoringNavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringNavigationLoadingImplCopyWithImpl<$Res>
    extends _$MentoringNavigationStatusCopyWithImpl<$Res,
        _$MentoringNavigationLoadingImpl>
    implements _$$MentoringNavigationLoadingImplCopyWith<$Res> {
  __$$MentoringNavigationLoadingImplCopyWithImpl(
      _$MentoringNavigationLoadingImpl _value,
      $Res Function(_$MentoringNavigationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringNavigationLoadingImpl implements MentoringNavigationLoading {
  const _$MentoringNavigationLoadingImpl();

  @override
  String toString() {
    return 'MentoringNavigationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringNavigationLoadingImpl);
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
    required TResult Function(MentoringNavigationInitial value) initial,
    required TResult Function(MentoringNavigationLoading value) loading,
    required TResult Function(MentoringNavigationFailure value) failure,
    required TResult Function(MentoringNavigationCreateSuccess value)
        createSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringNavigationInitial value)? initial,
    TResult? Function(MentoringNavigationLoading value)? loading,
    TResult? Function(MentoringNavigationFailure value)? failure,
    TResult? Function(MentoringNavigationCreateSuccess value)? createSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringNavigationInitial value)? initial,
    TResult Function(MentoringNavigationLoading value)? loading,
    TResult Function(MentoringNavigationFailure value)? failure,
    TResult Function(MentoringNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringNavigationLoading implements MentoringNavigationStatus {
  const factory MentoringNavigationLoading() = _$MentoringNavigationLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringNavigationFailureImplCopyWith<$Res> {
  factory _$$MentoringNavigationFailureImplCopyWith(
          _$MentoringNavigationFailureImpl value,
          $Res Function(_$MentoringNavigationFailureImpl) then) =
      __$$MentoringNavigationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MentoringNavigationFailureImplCopyWithImpl<$Res>
    extends _$MentoringNavigationStatusCopyWithImpl<$Res,
        _$MentoringNavigationFailureImpl>
    implements _$$MentoringNavigationFailureImplCopyWith<$Res> {
  __$$MentoringNavigationFailureImplCopyWithImpl(
      _$MentoringNavigationFailureImpl _value,
      $Res Function(_$MentoringNavigationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MentoringNavigationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MentoringNavigationFailureImpl implements MentoringNavigationFailure {
  const _$MentoringNavigationFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MentoringNavigationStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringNavigationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringNavigationFailureImplCopyWith<_$MentoringNavigationFailureImpl>
      get copyWith => __$$MentoringNavigationFailureImplCopyWithImpl<
          _$MentoringNavigationFailureImpl>(this, _$identity);

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
    required TResult Function(MentoringNavigationInitial value) initial,
    required TResult Function(MentoringNavigationLoading value) loading,
    required TResult Function(MentoringNavigationFailure value) failure,
    required TResult Function(MentoringNavigationCreateSuccess value)
        createSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringNavigationInitial value)? initial,
    TResult? Function(MentoringNavigationLoading value)? loading,
    TResult? Function(MentoringNavigationFailure value)? failure,
    TResult? Function(MentoringNavigationCreateSuccess value)? createSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringNavigationInitial value)? initial,
    TResult Function(MentoringNavigationLoading value)? loading,
    TResult Function(MentoringNavigationFailure value)? failure,
    TResult Function(MentoringNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MentoringNavigationFailure implements MentoringNavigationStatus {
  const factory MentoringNavigationFailure(final Failure failure) =
      _$MentoringNavigationFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$MentoringNavigationFailureImplCopyWith<_$MentoringNavigationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringNavigationCreateSuccessImplCopyWith<$Res> {
  factory _$$MentoringNavigationCreateSuccessImplCopyWith(
          _$MentoringNavigationCreateSuccessImpl value,
          $Res Function(_$MentoringNavigationCreateSuccessImpl) then) =
      __$$MentoringNavigationCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringNavigationCreateSuccessImplCopyWithImpl<$Res>
    extends _$MentoringNavigationStatusCopyWithImpl<$Res,
        _$MentoringNavigationCreateSuccessImpl>
    implements _$$MentoringNavigationCreateSuccessImplCopyWith<$Res> {
  __$$MentoringNavigationCreateSuccessImplCopyWithImpl(
      _$MentoringNavigationCreateSuccessImpl _value,
      $Res Function(_$MentoringNavigationCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringNavigationCreateSuccessImpl
    implements MentoringNavigationCreateSuccess {
  const _$MentoringNavigationCreateSuccessImpl();

  @override
  String toString() {
    return 'MentoringNavigationStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringNavigationCreateSuccessImpl);
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
    required TResult Function(MentoringNavigationInitial value) initial,
    required TResult Function(MentoringNavigationLoading value) loading,
    required TResult Function(MentoringNavigationFailure value) failure,
    required TResult Function(MentoringNavigationCreateSuccess value)
        createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringNavigationInitial value)? initial,
    TResult? Function(MentoringNavigationLoading value)? loading,
    TResult? Function(MentoringNavigationFailure value)? failure,
    TResult? Function(MentoringNavigationCreateSuccess value)? createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringNavigationInitial value)? initial,
    TResult Function(MentoringNavigationLoading value)? loading,
    TResult Function(MentoringNavigationFailure value)? failure,
    TResult Function(MentoringNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringNavigationCreateSuccess
    implements MentoringNavigationStatus {
  const factory MentoringNavigationCreateSuccess() =
      _$MentoringNavigationCreateSuccessImpl;
}
