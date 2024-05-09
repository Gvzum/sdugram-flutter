// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketState {
  TicketActiveStatus get activeTicketStatus =>
      throw _privateConstructorUsedError;
  String get ticketImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketStateCopyWith<TicketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
  @useResult
  $Res call({TicketActiveStatus activeTicketStatus, String ticketImageUrl});

  $TicketActiveStatusCopyWith<$Res> get activeTicketStatus;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeTicketStatus = null,
    Object? ticketImageUrl = null,
  }) {
    return _then(_value.copyWith(
      activeTicketStatus: null == activeTicketStatus
          ? _value.activeTicketStatus
          : activeTicketStatus // ignore: cast_nullable_to_non_nullable
              as TicketActiveStatus,
      ticketImageUrl: null == ticketImageUrl
          ? _value.ticketImageUrl
          : ticketImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketActiveStatusCopyWith<$Res> get activeTicketStatus {
    return $TicketActiveStatusCopyWith<$Res>(_value.activeTicketStatus,
        (value) {
      return _then(_value.copyWith(activeTicketStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketStateImplCopyWith<$Res>
    implements $TicketStateCopyWith<$Res> {
  factory _$$TicketStateImplCopyWith(
          _$TicketStateImpl value, $Res Function(_$TicketStateImpl) then) =
      __$$TicketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketActiveStatus activeTicketStatus, String ticketImageUrl});

  @override
  $TicketActiveStatusCopyWith<$Res> get activeTicketStatus;
}

/// @nodoc
class __$$TicketStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketStateImpl>
    implements _$$TicketStateImplCopyWith<$Res> {
  __$$TicketStateImplCopyWithImpl(
      _$TicketStateImpl _value, $Res Function(_$TicketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeTicketStatus = null,
    Object? ticketImageUrl = null,
  }) {
    return _then(_$TicketStateImpl(
      activeTicketStatus: null == activeTicketStatus
          ? _value.activeTicketStatus
          : activeTicketStatus // ignore: cast_nullable_to_non_nullable
              as TicketActiveStatus,
      ticketImageUrl: null == ticketImageUrl
          ? _value.ticketImageUrl
          : ticketImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketStateImpl implements _TicketState {
  const _$TicketStateImpl(
      {this.activeTicketStatus = const TicketActiveInitial(),
      this.ticketImageUrl = ''});

  @override
  @JsonKey()
  final TicketActiveStatus activeTicketStatus;
  @override
  @JsonKey()
  final String ticketImageUrl;

  @override
  String toString() {
    return 'TicketState(activeTicketStatus: $activeTicketStatus, ticketImageUrl: $ticketImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStateImpl &&
            (identical(other.activeTicketStatus, activeTicketStatus) ||
                other.activeTicketStatus == activeTicketStatus) &&
            (identical(other.ticketImageUrl, ticketImageUrl) ||
                other.ticketImageUrl == ticketImageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, activeTicketStatus, ticketImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStateImplCopyWith<_$TicketStateImpl> get copyWith =>
      __$$TicketStateImplCopyWithImpl<_$TicketStateImpl>(this, _$identity);
}

abstract class _TicketState implements TicketState {
  const factory _TicketState(
      {final TicketActiveStatus activeTicketStatus,
      final String ticketImageUrl}) = _$TicketStateImpl;

  @override
  TicketActiveStatus get activeTicketStatus;
  @override
  String get ticketImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$TicketStateImplCopyWith<_$TicketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketActiveStatus {
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
    required TResult Function(TicketActiveInitial value) initial,
    required TResult Function(TicketActiveLoading value) loading,
    required TResult Function(TicketActiveFailure value) failure,
    required TResult Function(TicketActiveSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketActiveInitial value)? initial,
    TResult? Function(TicketActiveLoading value)? loading,
    TResult? Function(TicketActiveFailure value)? failure,
    TResult? Function(TicketActiveSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketActiveInitial value)? initial,
    TResult Function(TicketActiveLoading value)? loading,
    TResult Function(TicketActiveFailure value)? failure,
    TResult Function(TicketActiveSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketActiveStatusCopyWith<$Res> {
  factory $TicketActiveStatusCopyWith(
          TicketActiveStatus value, $Res Function(TicketActiveStatus) then) =
      _$TicketActiveStatusCopyWithImpl<$Res, TicketActiveStatus>;
}

/// @nodoc
class _$TicketActiveStatusCopyWithImpl<$Res, $Val extends TicketActiveStatus>
    implements $TicketActiveStatusCopyWith<$Res> {
  _$TicketActiveStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketActiveInitialImplCopyWith<$Res> {
  factory _$$TicketActiveInitialImplCopyWith(_$TicketActiveInitialImpl value,
          $Res Function(_$TicketActiveInitialImpl) then) =
      __$$TicketActiveInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketActiveInitialImplCopyWithImpl<$Res>
    extends _$TicketActiveStatusCopyWithImpl<$Res, _$TicketActiveInitialImpl>
    implements _$$TicketActiveInitialImplCopyWith<$Res> {
  __$$TicketActiveInitialImplCopyWithImpl(_$TicketActiveInitialImpl _value,
      $Res Function(_$TicketActiveInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketActiveInitialImpl implements TicketActiveInitial {
  const _$TicketActiveInitialImpl();

  @override
  String toString() {
    return 'TicketActiveStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketActiveInitialImpl);
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
    required TResult Function(TicketActiveInitial value) initial,
    required TResult Function(TicketActiveLoading value) loading,
    required TResult Function(TicketActiveFailure value) failure,
    required TResult Function(TicketActiveSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketActiveInitial value)? initial,
    TResult? Function(TicketActiveLoading value)? loading,
    TResult? Function(TicketActiveFailure value)? failure,
    TResult? Function(TicketActiveSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketActiveInitial value)? initial,
    TResult Function(TicketActiveLoading value)? loading,
    TResult Function(TicketActiveFailure value)? failure,
    TResult Function(TicketActiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TicketActiveInitial implements TicketActiveStatus {
  const factory TicketActiveInitial() = _$TicketActiveInitialImpl;
}

/// @nodoc
abstract class _$$TicketActiveLoadingImplCopyWith<$Res> {
  factory _$$TicketActiveLoadingImplCopyWith(_$TicketActiveLoadingImpl value,
          $Res Function(_$TicketActiveLoadingImpl) then) =
      __$$TicketActiveLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketActiveLoadingImplCopyWithImpl<$Res>
    extends _$TicketActiveStatusCopyWithImpl<$Res, _$TicketActiveLoadingImpl>
    implements _$$TicketActiveLoadingImplCopyWith<$Res> {
  __$$TicketActiveLoadingImplCopyWithImpl(_$TicketActiveLoadingImpl _value,
      $Res Function(_$TicketActiveLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketActiveLoadingImpl implements TicketActiveLoading {
  const _$TicketActiveLoadingImpl();

  @override
  String toString() {
    return 'TicketActiveStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketActiveLoadingImpl);
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
    required TResult Function(TicketActiveInitial value) initial,
    required TResult Function(TicketActiveLoading value) loading,
    required TResult Function(TicketActiveFailure value) failure,
    required TResult Function(TicketActiveSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketActiveInitial value)? initial,
    TResult? Function(TicketActiveLoading value)? loading,
    TResult? Function(TicketActiveFailure value)? failure,
    TResult? Function(TicketActiveSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketActiveInitial value)? initial,
    TResult Function(TicketActiveLoading value)? loading,
    TResult Function(TicketActiveFailure value)? failure,
    TResult Function(TicketActiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketActiveLoading implements TicketActiveStatus {
  const factory TicketActiveLoading() = _$TicketActiveLoadingImpl;
}

/// @nodoc
abstract class _$$TicketActiveFailureImplCopyWith<$Res> {
  factory _$$TicketActiveFailureImplCopyWith(_$TicketActiveFailureImpl value,
          $Res Function(_$TicketActiveFailureImpl) then) =
      __$$TicketActiveFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketActiveFailureImplCopyWithImpl<$Res>
    extends _$TicketActiveStatusCopyWithImpl<$Res, _$TicketActiveFailureImpl>
    implements _$$TicketActiveFailureImplCopyWith<$Res> {
  __$$TicketActiveFailureImplCopyWithImpl(_$TicketActiveFailureImpl _value,
      $Res Function(_$TicketActiveFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketActiveFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketActiveFailureImpl implements TicketActiveFailure {
  const _$TicketActiveFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketActiveStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketActiveFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketActiveFailureImplCopyWith<_$TicketActiveFailureImpl> get copyWith =>
      __$$TicketActiveFailureImplCopyWithImpl<_$TicketActiveFailureImpl>(
          this, _$identity);

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
    required TResult Function(TicketActiveInitial value) initial,
    required TResult Function(TicketActiveLoading value) loading,
    required TResult Function(TicketActiveFailure value) failure,
    required TResult Function(TicketActiveSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketActiveInitial value)? initial,
    TResult? Function(TicketActiveLoading value)? loading,
    TResult? Function(TicketActiveFailure value)? failure,
    TResult? Function(TicketActiveSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketActiveInitial value)? initial,
    TResult Function(TicketActiveLoading value)? loading,
    TResult Function(TicketActiveFailure value)? failure,
    TResult Function(TicketActiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TicketActiveFailure implements TicketActiveStatus {
  const factory TicketActiveFailure(final Failure failure) =
      _$TicketActiveFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketActiveFailureImplCopyWith<_$TicketActiveFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketActiveSuccessImplCopyWith<$Res> {
  factory _$$TicketActiveSuccessImplCopyWith(_$TicketActiveSuccessImpl value,
          $Res Function(_$TicketActiveSuccessImpl) then) =
      __$$TicketActiveSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TicketModel> listArticles});
}

/// @nodoc
class __$$TicketActiveSuccessImplCopyWithImpl<$Res>
    extends _$TicketActiveStatusCopyWithImpl<$Res, _$TicketActiveSuccessImpl>
    implements _$$TicketActiveSuccessImplCopyWith<$Res> {
  __$$TicketActiveSuccessImplCopyWithImpl(_$TicketActiveSuccessImpl _value,
      $Res Function(_$TicketActiveSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listArticles = null,
  }) {
    return _then(_$TicketActiveSuccessImpl(
      null == listArticles
          ? _value._listArticles
          : listArticles // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>,
    ));
  }
}

/// @nodoc

class _$TicketActiveSuccessImpl implements TicketActiveSuccess {
  const _$TicketActiveSuccessImpl(final List<TicketModel> listArticles)
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
    return 'TicketActiveStatus.success(listArticles: $listArticles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketActiveSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listArticles, _listArticles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listArticles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketActiveSuccessImplCopyWith<_$TicketActiveSuccessImpl> get copyWith =>
      __$$TicketActiveSuccessImplCopyWithImpl<_$TicketActiveSuccessImpl>(
          this, _$identity);

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
    required TResult Function(TicketActiveInitial value) initial,
    required TResult Function(TicketActiveLoading value) loading,
    required TResult Function(TicketActiveFailure value) failure,
    required TResult Function(TicketActiveSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketActiveInitial value)? initial,
    TResult? Function(TicketActiveLoading value)? loading,
    TResult? Function(TicketActiveFailure value)? failure,
    TResult? Function(TicketActiveSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketActiveInitial value)? initial,
    TResult Function(TicketActiveLoading value)? loading,
    TResult Function(TicketActiveFailure value)? failure,
    TResult Function(TicketActiveSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TicketActiveSuccess implements TicketActiveStatus {
  const factory TicketActiveSuccess(final List<TicketModel> listArticles) =
      _$TicketActiveSuccessImpl;

  List<TicketModel> get listArticles;
  @JsonKey(ignore: true)
  _$$TicketActiveSuccessImplCopyWith<_$TicketActiveSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
