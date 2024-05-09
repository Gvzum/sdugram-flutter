// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_inactive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketInactiveState {
  TicketInactiveStatus get inactiveTicketStatus =>
      throw _privateConstructorUsedError;
  String get ticketImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketInactiveStateCopyWith<TicketInactiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketInactiveStateCopyWith<$Res> {
  factory $TicketInactiveStateCopyWith(
          TicketInactiveState value, $Res Function(TicketInactiveState) then) =
      _$TicketInactiveStateCopyWithImpl<$Res, TicketInactiveState>;
  @useResult
  $Res call({TicketInactiveStatus inactiveTicketStatus, String ticketImageUrl});

  $TicketInactiveStatusCopyWith<$Res> get inactiveTicketStatus;
}

/// @nodoc
class _$TicketInactiveStateCopyWithImpl<$Res, $Val extends TicketInactiveState>
    implements $TicketInactiveStateCopyWith<$Res> {
  _$TicketInactiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inactiveTicketStatus = null,
    Object? ticketImageUrl = null,
  }) {
    return _then(_value.copyWith(
      inactiveTicketStatus: null == inactiveTicketStatus
          ? _value.inactiveTicketStatus
          : inactiveTicketStatus // ignore: cast_nullable_to_non_nullable
              as TicketInactiveStatus,
      ticketImageUrl: null == ticketImageUrl
          ? _value.ticketImageUrl
          : ticketImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketInactiveStatusCopyWith<$Res> get inactiveTicketStatus {
    return $TicketInactiveStatusCopyWith<$Res>(_value.inactiveTicketStatus,
        (value) {
      return _then(_value.copyWith(inactiveTicketStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketInactiveStateImplCopyWith<$Res>
    implements $TicketInactiveStateCopyWith<$Res> {
  factory _$$TicketInactiveStateImplCopyWith(_$TicketInactiveStateImpl value,
          $Res Function(_$TicketInactiveStateImpl) then) =
      __$$TicketInactiveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketInactiveStatus inactiveTicketStatus, String ticketImageUrl});

  @override
  $TicketInactiveStatusCopyWith<$Res> get inactiveTicketStatus;
}

/// @nodoc
class __$$TicketInactiveStateImplCopyWithImpl<$Res>
    extends _$TicketInactiveStateCopyWithImpl<$Res, _$TicketInactiveStateImpl>
    implements _$$TicketInactiveStateImplCopyWith<$Res> {
  __$$TicketInactiveStateImplCopyWithImpl(_$TicketInactiveStateImpl _value,
      $Res Function(_$TicketInactiveStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inactiveTicketStatus = null,
    Object? ticketImageUrl = null,
  }) {
    return _then(_$TicketInactiveStateImpl(
      inactiveTicketStatus: null == inactiveTicketStatus
          ? _value.inactiveTicketStatus
          : inactiveTicketStatus // ignore: cast_nullable_to_non_nullable
              as TicketInactiveStatus,
      ticketImageUrl: null == ticketImageUrl
          ? _value.ticketImageUrl
          : ticketImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketInactiveStateImpl implements _TicketInactiveState {
  const _$TicketInactiveStateImpl(
      {this.inactiveTicketStatus = const TicketInactiveInitial(),
      this.ticketImageUrl = ''});

  @override
  @JsonKey()
  final TicketInactiveStatus inactiveTicketStatus;
  @override
  @JsonKey()
  final String ticketImageUrl;

  @override
  String toString() {
    return 'TicketInactiveState(inactiveTicketStatus: $inactiveTicketStatus, ticketImageUrl: $ticketImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketInactiveStateImpl &&
            (identical(other.inactiveTicketStatus, inactiveTicketStatus) ||
                other.inactiveTicketStatus == inactiveTicketStatus) &&
            (identical(other.ticketImageUrl, ticketImageUrl) ||
                other.ticketImageUrl == ticketImageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inactiveTicketStatus, ticketImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketInactiveStateImplCopyWith<_$TicketInactiveStateImpl> get copyWith =>
      __$$TicketInactiveStateImplCopyWithImpl<_$TicketInactiveStateImpl>(
          this, _$identity);
}

abstract class _TicketInactiveState implements TicketInactiveState {
  const factory _TicketInactiveState(
      {final TicketInactiveStatus inactiveTicketStatus,
      final String ticketImageUrl}) = _$TicketInactiveStateImpl;

  @override
  TicketInactiveStatus get inactiveTicketStatus;
  @override
  String get ticketImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$TicketInactiveStateImplCopyWith<_$TicketInactiveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketInactiveStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<TicketModel> listArticles) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<TicketModel> listArticles)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<TicketModel> listArticles)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInactiveInitial value) initial,
    required TResult Function(TicketInactiveLoading value) loading,
    required TResult Function(TicketInactiveFailure value) failure,
    required TResult Function(TicketInactiveSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInactiveInitial value)? initial,
    TResult? Function(TicketInactiveLoading value)? loading,
    TResult? Function(TicketInactiveFailure value)? failure,
    TResult? Function(TicketInactiveSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInactiveInitial value)? initial,
    TResult Function(TicketInactiveLoading value)? loading,
    TResult Function(TicketInactiveFailure value)? failure,
    TResult Function(TicketInactiveSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketInactiveStatusCopyWith<$Res> {
  factory $TicketInactiveStatusCopyWith(TicketInactiveStatus value,
          $Res Function(TicketInactiveStatus) then) =
      _$TicketInactiveStatusCopyWithImpl<$Res, TicketInactiveStatus>;
}

/// @nodoc
class _$TicketInactiveStatusCopyWithImpl<$Res,
        $Val extends TicketInactiveStatus>
    implements $TicketInactiveStatusCopyWith<$Res> {
  _$TicketInactiveStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketInactiveInitialImplCopyWith<$Res> {
  factory _$$TicketInactiveInitialImplCopyWith(
          _$TicketInactiveInitialImpl value,
          $Res Function(_$TicketInactiveInitialImpl) then) =
      __$$TicketInactiveInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketInactiveInitialImplCopyWithImpl<$Res>
    extends _$TicketInactiveStatusCopyWithImpl<$Res,
        _$TicketInactiveInitialImpl>
    implements _$$TicketInactiveInitialImplCopyWith<$Res> {
  __$$TicketInactiveInitialImplCopyWithImpl(_$TicketInactiveInitialImpl _value,
      $Res Function(_$TicketInactiveInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketInactiveInitialImpl implements TicketInactiveInitial {
  const _$TicketInactiveInitialImpl();

  @override
  String toString() {
    return 'TicketInactiveStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketInactiveInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<TicketModel> listArticles) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<TicketModel> listArticles)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<TicketModel> listArticles)? success,
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
    required TResult Function(TicketInactiveInitial value) initial,
    required TResult Function(TicketInactiveLoading value) loading,
    required TResult Function(TicketInactiveFailure value) failure,
    required TResult Function(TicketInactiveSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInactiveInitial value)? initial,
    TResult? Function(TicketInactiveLoading value)? loading,
    TResult? Function(TicketInactiveFailure value)? failure,
    TResult? Function(TicketInactiveSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInactiveInitial value)? initial,
    TResult Function(TicketInactiveLoading value)? loading,
    TResult Function(TicketInactiveFailure value)? failure,
    TResult Function(TicketInactiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TicketInactiveInitial implements TicketInactiveStatus {
  const factory TicketInactiveInitial() = _$TicketInactiveInitialImpl;
}

/// @nodoc
abstract class _$$TicketInactiveLoadingImplCopyWith<$Res> {
  factory _$$TicketInactiveLoadingImplCopyWith(
          _$TicketInactiveLoadingImpl value,
          $Res Function(_$TicketInactiveLoadingImpl) then) =
      __$$TicketInactiveLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketInactiveLoadingImplCopyWithImpl<$Res>
    extends _$TicketInactiveStatusCopyWithImpl<$Res,
        _$TicketInactiveLoadingImpl>
    implements _$$TicketInactiveLoadingImplCopyWith<$Res> {
  __$$TicketInactiveLoadingImplCopyWithImpl(_$TicketInactiveLoadingImpl _value,
      $Res Function(_$TicketInactiveLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketInactiveLoadingImpl implements TicketInactiveLoading {
  const _$TicketInactiveLoadingImpl();

  @override
  String toString() {
    return 'TicketInactiveStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketInactiveLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<TicketModel> listArticles) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<TicketModel> listArticles)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<TicketModel> listArticles)? success,
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
    required TResult Function(TicketInactiveInitial value) initial,
    required TResult Function(TicketInactiveLoading value) loading,
    required TResult Function(TicketInactiveFailure value) failure,
    required TResult Function(TicketInactiveSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInactiveInitial value)? initial,
    TResult? Function(TicketInactiveLoading value)? loading,
    TResult? Function(TicketInactiveFailure value)? failure,
    TResult? Function(TicketInactiveSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInactiveInitial value)? initial,
    TResult Function(TicketInactiveLoading value)? loading,
    TResult Function(TicketInactiveFailure value)? failure,
    TResult Function(TicketInactiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketInactiveLoading implements TicketInactiveStatus {
  const factory TicketInactiveLoading() = _$TicketInactiveLoadingImpl;
}

/// @nodoc
abstract class _$$TicketInactiveFailureImplCopyWith<$Res> {
  factory _$$TicketInactiveFailureImplCopyWith(
          _$TicketInactiveFailureImpl value,
          $Res Function(_$TicketInactiveFailureImpl) then) =
      __$$TicketInactiveFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketInactiveFailureImplCopyWithImpl<$Res>
    extends _$TicketInactiveStatusCopyWithImpl<$Res,
        _$TicketInactiveFailureImpl>
    implements _$$TicketInactiveFailureImplCopyWith<$Res> {
  __$$TicketInactiveFailureImplCopyWithImpl(_$TicketInactiveFailureImpl _value,
      $Res Function(_$TicketInactiveFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketInactiveFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketInactiveFailureImpl implements TicketInactiveFailure {
  const _$TicketInactiveFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketInactiveStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketInactiveFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketInactiveFailureImplCopyWith<_$TicketInactiveFailureImpl>
      get copyWith => __$$TicketInactiveFailureImplCopyWithImpl<
          _$TicketInactiveFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<TicketModel> listArticles) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<TicketModel> listArticles)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<TicketModel> listArticles)? success,
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
    required TResult Function(TicketInactiveInitial value) initial,
    required TResult Function(TicketInactiveLoading value) loading,
    required TResult Function(TicketInactiveFailure value) failure,
    required TResult Function(TicketInactiveSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInactiveInitial value)? initial,
    TResult? Function(TicketInactiveLoading value)? loading,
    TResult? Function(TicketInactiveFailure value)? failure,
    TResult? Function(TicketInactiveSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInactiveInitial value)? initial,
    TResult Function(TicketInactiveLoading value)? loading,
    TResult Function(TicketInactiveFailure value)? failure,
    TResult Function(TicketInactiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TicketInactiveFailure implements TicketInactiveStatus {
  const factory TicketInactiveFailure(final Failure failure) =
      _$TicketInactiveFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketInactiveFailureImplCopyWith<_$TicketInactiveFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketInactiveSuccessImplCopyWith<$Res> {
  factory _$$TicketInactiveSuccessImplCopyWith(
          _$TicketInactiveSuccessImpl value,
          $Res Function(_$TicketInactiveSuccessImpl) then) =
      __$$TicketInactiveSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TicketModel> listArticles});
}

/// @nodoc
class __$$TicketInactiveSuccessImplCopyWithImpl<$Res>
    extends _$TicketInactiveStatusCopyWithImpl<$Res,
        _$TicketInactiveSuccessImpl>
    implements _$$TicketInactiveSuccessImplCopyWith<$Res> {
  __$$TicketInactiveSuccessImplCopyWithImpl(_$TicketInactiveSuccessImpl _value,
      $Res Function(_$TicketInactiveSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listArticles = null,
  }) {
    return _then(_$TicketInactiveSuccessImpl(
      null == listArticles
          ? _value._listArticles
          : listArticles // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ));
  }
}

/// @nodoc

class _$TicketInactiveSuccessImpl implements TicketInactiveSuccess {
  const _$TicketInactiveSuccessImpl(final List<TicketModel> listArticles)
      : _listArticles = listArticles;

  final List<TicketModel> _listArticles;
  @override
  List<TicketModel> get listArticles {
    if (_listArticles is EqualUnmodifiableListView) return _listArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listArticles);
  }

  @override
  String toString() {
    return 'TicketInactiveStatus.success(listArticles: $listArticles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketInactiveSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listArticles, _listArticles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listArticles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketInactiveSuccessImplCopyWith<_$TicketInactiveSuccessImpl>
      get copyWith => __$$TicketInactiveSuccessImplCopyWithImpl<
          _$TicketInactiveSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<TicketModel> listArticles) success,
  }) {
    return success(listArticles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<TicketModel> listArticles)? success,
  }) {
    return success?.call(listArticles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<TicketModel> listArticles)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listArticles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInactiveInitial value) initial,
    required TResult Function(TicketInactiveLoading value) loading,
    required TResult Function(TicketInactiveFailure value) failure,
    required TResult Function(TicketInactiveSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInactiveInitial value)? initial,
    TResult? Function(TicketInactiveLoading value)? loading,
    TResult? Function(TicketInactiveFailure value)? failure,
    TResult? Function(TicketInactiveSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInactiveInitial value)? initial,
    TResult Function(TicketInactiveLoading value)? loading,
    TResult Function(TicketInactiveFailure value)? failure,
    TResult Function(TicketInactiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TicketInactiveSuccess implements TicketInactiveStatus {
  const factory TicketInactiveSuccess(final List<TicketModel> listArticles) =
      _$TicketInactiveSuccessImpl;

  List<TicketModel> get listArticles;
  @JsonKey(ignore: true)
  _$$TicketInactiveSuccessImplCopyWith<_$TicketInactiveSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
