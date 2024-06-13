// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDetailState {
  ChatDetailStatus get chatDetailStatus => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDetailStateCopyWith<ChatDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailStateCopyWith<$Res> {
  factory $ChatDetailStateCopyWith(
          ChatDetailState value, $Res Function(ChatDetailState) then) =
      _$ChatDetailStateCopyWithImpl<$Res, ChatDetailState>;
  @useResult
  $Res call({ChatDetailStatus chatDetailStatus, int? userId});

  $ChatDetailStatusCopyWith<$Res> get chatDetailStatus;
}

/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res, $Val extends ChatDetailState>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatDetailStatus = null,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      chatDetailStatus: null == chatDetailStatus
          ? _value.chatDetailStatus
          : chatDetailStatus // ignore: cast_nullable_to_non_nullable
              as ChatDetailStatus,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatDetailStatusCopyWith<$Res> get chatDetailStatus {
    return $ChatDetailStatusCopyWith<$Res>(_value.chatDetailStatus, (value) {
      return _then(_value.copyWith(chatDetailStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatDetailStateImplCopyWith<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  factory _$$ChatDetailStateImplCopyWith(_$ChatDetailStateImpl value,
          $Res Function(_$ChatDetailStateImpl) then) =
      __$$ChatDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatDetailStatus chatDetailStatus, int? userId});

  @override
  $ChatDetailStatusCopyWith<$Res> get chatDetailStatus;
}

/// @nodoc
class __$$ChatDetailStateImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$ChatDetailStateImpl>
    implements _$$ChatDetailStateImplCopyWith<$Res> {
  __$$ChatDetailStateImplCopyWithImpl(
      _$ChatDetailStateImpl _value, $Res Function(_$ChatDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatDetailStatus = null,
    Object? userId = freezed,
  }) {
    return _then(_$ChatDetailStateImpl(
      chatDetailStatus: null == chatDetailStatus
          ? _value.chatDetailStatus
          : chatDetailStatus // ignore: cast_nullable_to_non_nullable
              as ChatDetailStatus,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChatDetailStateImpl implements _ChatDetailState {
  const _$ChatDetailStateImpl(
      {this.chatDetailStatus = const ChatDetailInitial(), this.userId = null});

  @override
  @JsonKey()
  final ChatDetailStatus chatDetailStatus;
  @override
  @JsonKey()
  final int? userId;

  @override
  String toString() {
    return 'ChatDetailState(chatDetailStatus: $chatDetailStatus, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailStateImpl &&
            (identical(other.chatDetailStatus, chatDetailStatus) ||
                other.chatDetailStatus == chatDetailStatus) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatDetailStatus, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailStateImplCopyWith<_$ChatDetailStateImpl> get copyWith =>
      __$$ChatDetailStateImplCopyWithImpl<_$ChatDetailStateImpl>(
          this, _$identity);
}

abstract class _ChatDetailState implements ChatDetailState {
  const factory _ChatDetailState(
      {final ChatDetailStatus chatDetailStatus,
      final int? userId}) = _$ChatDetailStateImpl;

  @override
  ChatDetailStatus get chatDetailStatus;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailStateImplCopyWith<_$ChatDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatDetailStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ChatMessageDetailsModel listChats) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ChatMessageDetailsModel listChats)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ChatMessageDetailsModel listChats)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatDetailInitial value) initial,
    required TResult Function(ChatDetailLoading value) loading,
    required TResult Function(ChatDetailFailure value) failure,
    required TResult Function(ChatDetailSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatDetailInitial value)? initial,
    TResult? Function(ChatDetailLoading value)? loading,
    TResult? Function(ChatDetailFailure value)? failure,
    TResult? Function(ChatDetailSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatDetailInitial value)? initial,
    TResult Function(ChatDetailLoading value)? loading,
    TResult Function(ChatDetailFailure value)? failure,
    TResult Function(ChatDetailSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailStatusCopyWith<$Res> {
  factory $ChatDetailStatusCopyWith(
          ChatDetailStatus value, $Res Function(ChatDetailStatus) then) =
      _$ChatDetailStatusCopyWithImpl<$Res, ChatDetailStatus>;
}

/// @nodoc
class _$ChatDetailStatusCopyWithImpl<$Res, $Val extends ChatDetailStatus>
    implements $ChatDetailStatusCopyWith<$Res> {
  _$ChatDetailStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatDetailInitialImplCopyWith<$Res> {
  factory _$$ChatDetailInitialImplCopyWith(_$ChatDetailInitialImpl value,
          $Res Function(_$ChatDetailInitialImpl) then) =
      __$$ChatDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatDetailInitialImplCopyWithImpl<$Res>
    extends _$ChatDetailStatusCopyWithImpl<$Res, _$ChatDetailInitialImpl>
    implements _$$ChatDetailInitialImplCopyWith<$Res> {
  __$$ChatDetailInitialImplCopyWithImpl(_$ChatDetailInitialImpl _value,
      $Res Function(_$ChatDetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatDetailInitialImpl implements ChatDetailInitial {
  const _$ChatDetailInitialImpl();

  @override
  String toString() {
    return 'ChatDetailStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ChatMessageDetailsModel listChats) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ChatMessageDetailsModel listChats)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ChatMessageDetailsModel listChats)? success,
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
    required TResult Function(ChatDetailInitial value) initial,
    required TResult Function(ChatDetailLoading value) loading,
    required TResult Function(ChatDetailFailure value) failure,
    required TResult Function(ChatDetailSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatDetailInitial value)? initial,
    TResult? Function(ChatDetailLoading value)? loading,
    TResult? Function(ChatDetailFailure value)? failure,
    TResult? Function(ChatDetailSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatDetailInitial value)? initial,
    TResult Function(ChatDetailLoading value)? loading,
    TResult Function(ChatDetailFailure value)? failure,
    TResult Function(ChatDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatDetailInitial implements ChatDetailStatus {
  const factory ChatDetailInitial() = _$ChatDetailInitialImpl;
}

/// @nodoc
abstract class _$$ChatDetailLoadingImplCopyWith<$Res> {
  factory _$$ChatDetailLoadingImplCopyWith(_$ChatDetailLoadingImpl value,
          $Res Function(_$ChatDetailLoadingImpl) then) =
      __$$ChatDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatDetailLoadingImplCopyWithImpl<$Res>
    extends _$ChatDetailStatusCopyWithImpl<$Res, _$ChatDetailLoadingImpl>
    implements _$$ChatDetailLoadingImplCopyWith<$Res> {
  __$$ChatDetailLoadingImplCopyWithImpl(_$ChatDetailLoadingImpl _value,
      $Res Function(_$ChatDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatDetailLoadingImpl implements ChatDetailLoading {
  const _$ChatDetailLoadingImpl();

  @override
  String toString() {
    return 'ChatDetailStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ChatMessageDetailsModel listChats) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ChatMessageDetailsModel listChats)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ChatMessageDetailsModel listChats)? success,
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
    required TResult Function(ChatDetailInitial value) initial,
    required TResult Function(ChatDetailLoading value) loading,
    required TResult Function(ChatDetailFailure value) failure,
    required TResult Function(ChatDetailSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatDetailInitial value)? initial,
    TResult? Function(ChatDetailLoading value)? loading,
    TResult? Function(ChatDetailFailure value)? failure,
    TResult? Function(ChatDetailSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatDetailInitial value)? initial,
    TResult Function(ChatDetailLoading value)? loading,
    TResult Function(ChatDetailFailure value)? failure,
    TResult Function(ChatDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatDetailLoading implements ChatDetailStatus {
  const factory ChatDetailLoading() = _$ChatDetailLoadingImpl;
}

/// @nodoc
abstract class _$$ChatDetailFailureImplCopyWith<$Res> {
  factory _$$ChatDetailFailureImplCopyWith(_$ChatDetailFailureImpl value,
          $Res Function(_$ChatDetailFailureImpl) then) =
      __$$ChatDetailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ChatDetailFailureImplCopyWithImpl<$Res>
    extends _$ChatDetailStatusCopyWithImpl<$Res, _$ChatDetailFailureImpl>
    implements _$$ChatDetailFailureImplCopyWith<$Res> {
  __$$ChatDetailFailureImplCopyWithImpl(_$ChatDetailFailureImpl _value,
      $Res Function(_$ChatDetailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ChatDetailFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ChatDetailFailureImpl implements ChatDetailFailure {
  const _$ChatDetailFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChatDetailStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailFailureImplCopyWith<_$ChatDetailFailureImpl> get copyWith =>
      __$$ChatDetailFailureImplCopyWithImpl<_$ChatDetailFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ChatMessageDetailsModel listChats) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ChatMessageDetailsModel listChats)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ChatMessageDetailsModel listChats)? success,
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
    required TResult Function(ChatDetailInitial value) initial,
    required TResult Function(ChatDetailLoading value) loading,
    required TResult Function(ChatDetailFailure value) failure,
    required TResult Function(ChatDetailSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatDetailInitial value)? initial,
    TResult? Function(ChatDetailLoading value)? loading,
    TResult? Function(ChatDetailFailure value)? failure,
    TResult? Function(ChatDetailSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatDetailInitial value)? initial,
    TResult Function(ChatDetailLoading value)? loading,
    TResult Function(ChatDetailFailure value)? failure,
    TResult Function(ChatDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatDetailFailure implements ChatDetailStatus {
  const factory ChatDetailFailure(final Failure failure) =
      _$ChatDetailFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ChatDetailFailureImplCopyWith<_$ChatDetailFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatDetailSuccessImplCopyWith<$Res> {
  factory _$$ChatDetailSuccessImplCopyWith(_$ChatDetailSuccessImpl value,
          $Res Function(_$ChatDetailSuccessImpl) then) =
      __$$ChatDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageDetailsModel listChats});
}

/// @nodoc
class __$$ChatDetailSuccessImplCopyWithImpl<$Res>
    extends _$ChatDetailStatusCopyWithImpl<$Res, _$ChatDetailSuccessImpl>
    implements _$$ChatDetailSuccessImplCopyWith<$Res> {
  __$$ChatDetailSuccessImplCopyWithImpl(_$ChatDetailSuccessImpl _value,
      $Res Function(_$ChatDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listChats = null,
  }) {
    return _then(_$ChatDetailSuccessImpl(
      null == listChats
          ? _value.listChats
          : listChats // ignore: cast_nullable_to_non_nullable
              as ChatMessageDetailsModel,
    ));
  }
}

/// @nodoc

class _$ChatDetailSuccessImpl implements ChatDetailSuccess {
  const _$ChatDetailSuccessImpl(this.listChats);

  @override
  final ChatMessageDetailsModel listChats;

  @override
  String toString() {
    return 'ChatDetailStatus.success(listChats: $listChats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailSuccessImpl &&
            (identical(other.listChats, listChats) ||
                other.listChats == listChats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listChats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailSuccessImplCopyWith<_$ChatDetailSuccessImpl> get copyWith =>
      __$$ChatDetailSuccessImplCopyWithImpl<_$ChatDetailSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ChatMessageDetailsModel listChats) success,
  }) {
    return success(listChats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ChatMessageDetailsModel listChats)? success,
  }) {
    return success?.call(listChats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ChatMessageDetailsModel listChats)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listChats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatDetailInitial value) initial,
    required TResult Function(ChatDetailLoading value) loading,
    required TResult Function(ChatDetailFailure value) failure,
    required TResult Function(ChatDetailSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatDetailInitial value)? initial,
    TResult? Function(ChatDetailLoading value)? loading,
    TResult? Function(ChatDetailFailure value)? failure,
    TResult? Function(ChatDetailSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatDetailInitial value)? initial,
    TResult Function(ChatDetailLoading value)? loading,
    TResult Function(ChatDetailFailure value)? failure,
    TResult Function(ChatDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatDetailSuccess implements ChatDetailStatus {
  const factory ChatDetailSuccess(final ChatMessageDetailsModel listChats) =
      _$ChatDetailSuccessImpl;

  ChatMessageDetailsModel get listChats;
  @JsonKey(ignore: true)
  _$$ChatDetailSuccessImplCopyWith<_$ChatDetailSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
