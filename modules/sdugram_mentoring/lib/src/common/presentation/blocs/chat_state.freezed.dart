// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  ChatStatus get chatStatus => throw _privateConstructorUsedError;
  ChatNavigationStatus get navigation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatStatus chatStatus, ChatNavigationStatus navigation});

  $ChatStatusCopyWith<$Res> get chatStatus;
  $ChatNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatStatus = null,
    Object? navigation = null,
  }) {
    return _then(_value.copyWith(
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ChatNavigationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatStatusCopyWith<$Res> get chatStatus {
    return $ChatStatusCopyWith<$Res>(_value.chatStatus, (value) {
      return _then(_value.copyWith(chatStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatNavigationStatusCopyWith<$Res> get navigation {
    return $ChatNavigationStatusCopyWith<$Res>(_value.navigation, (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatStatus chatStatus, ChatNavigationStatus navigation});

  @override
  $ChatStatusCopyWith<$Res> get chatStatus;
  @override
  $ChatNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatStatus = null,
    Object? navigation = null,
  }) {
    return _then(_$ChatStateImpl(
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as ChatNavigationStatus,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.chatStatus = const ChatInitial(),
      this.navigation = const ChatNavigationInitial()});

  @override
  @JsonKey()
  final ChatStatus chatStatus;
  @override
  @JsonKey()
  final ChatNavigationStatus navigation;

  @override
  String toString() {
    return 'ChatState(chatStatus: $chatStatus, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.chatStatus, chatStatus) ||
                other.chatStatus == chatStatus) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatStatus, navigation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final ChatStatus chatStatus,
      final ChatNavigationStatus navigation}) = _$ChatStateImpl;

  @override
  ChatStatus get chatStatus;
  @override
  ChatNavigationStatus get navigation;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<ChatMessageItem> listChats) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<ChatMessageItem> listChats)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<ChatMessageItem> listChats)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInitial value) initial,
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatFailure value) failure,
    required TResult Function(ChatSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitial value)? initial,
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatFailure value)? failure,
    TResult? Function(ChatSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? initial,
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatFailure value)? failure,
    TResult Function(ChatSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStatusCopyWith<$Res> {
  factory $ChatStatusCopyWith(
          ChatStatus value, $Res Function(ChatStatus) then) =
      _$ChatStatusCopyWithImpl<$Res, ChatStatus>;
}

/// @nodoc
class _$ChatStatusCopyWithImpl<$Res, $Val extends ChatStatus>
    implements $ChatStatusCopyWith<$Res> {
  _$ChatStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatInitialImplCopyWith<$Res> {
  factory _$$ChatInitialImplCopyWith(
          _$ChatInitialImpl value, $Res Function(_$ChatInitialImpl) then) =
      __$$ChatInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatInitialImplCopyWithImpl<$Res>
    extends _$ChatStatusCopyWithImpl<$Res, _$ChatInitialImpl>
    implements _$$ChatInitialImplCopyWith<$Res> {
  __$$ChatInitialImplCopyWithImpl(
      _$ChatInitialImpl _value, $Res Function(_$ChatInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatInitialImpl implements ChatInitial {
  const _$ChatInitialImpl();

  @override
  String toString() {
    return 'ChatStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<ChatMessageItem> listChats) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<ChatMessageItem> listChats)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<ChatMessageItem> listChats)? success,
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
    required TResult Function(ChatInitial value) initial,
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatFailure value) failure,
    required TResult Function(ChatSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitial value)? initial,
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatFailure value)? failure,
    TResult? Function(ChatSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? initial,
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatFailure value)? failure,
    TResult Function(ChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatInitial implements ChatStatus {
  const factory ChatInitial() = _$ChatInitialImpl;
}

/// @nodoc
abstract class _$$ChatLoadingImplCopyWith<$Res> {
  factory _$$ChatLoadingImplCopyWith(
          _$ChatLoadingImpl value, $Res Function(_$ChatLoadingImpl) then) =
      __$$ChatLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatLoadingImplCopyWithImpl<$Res>
    extends _$ChatStatusCopyWithImpl<$Res, _$ChatLoadingImpl>
    implements _$$ChatLoadingImplCopyWith<$Res> {
  __$$ChatLoadingImplCopyWithImpl(
      _$ChatLoadingImpl _value, $Res Function(_$ChatLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatLoadingImpl implements ChatLoading {
  const _$ChatLoadingImpl();

  @override
  String toString() {
    return 'ChatStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<ChatMessageItem> listChats) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<ChatMessageItem> listChats)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<ChatMessageItem> listChats)? success,
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
    required TResult Function(ChatInitial value) initial,
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatFailure value) failure,
    required TResult Function(ChatSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitial value)? initial,
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatFailure value)? failure,
    TResult? Function(ChatSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? initial,
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatFailure value)? failure,
    TResult Function(ChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatLoading implements ChatStatus {
  const factory ChatLoading() = _$ChatLoadingImpl;
}

/// @nodoc
abstract class _$$ChatFailureImplCopyWith<$Res> {
  factory _$$ChatFailureImplCopyWith(
          _$ChatFailureImpl value, $Res Function(_$ChatFailureImpl) then) =
      __$$ChatFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ChatFailureImplCopyWithImpl<$Res>
    extends _$ChatStatusCopyWithImpl<$Res, _$ChatFailureImpl>
    implements _$$ChatFailureImplCopyWith<$Res> {
  __$$ChatFailureImplCopyWithImpl(
      _$ChatFailureImpl _value, $Res Function(_$ChatFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ChatFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ChatFailureImpl implements ChatFailure {
  const _$ChatFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChatStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatFailureImplCopyWith<_$ChatFailureImpl> get copyWith =>
      __$$ChatFailureImplCopyWithImpl<_$ChatFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<ChatMessageItem> listChats) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<ChatMessageItem> listChats)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<ChatMessageItem> listChats)? success,
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
    required TResult Function(ChatInitial value) initial,
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatFailure value) failure,
    required TResult Function(ChatSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitial value)? initial,
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatFailure value)? failure,
    TResult? Function(ChatSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? initial,
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatFailure value)? failure,
    TResult Function(ChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatFailure implements ChatStatus {
  const factory ChatFailure(final Failure failure) = _$ChatFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ChatFailureImplCopyWith<_$ChatFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSuccessImplCopyWith<$Res> {
  factory _$$ChatSuccessImplCopyWith(
          _$ChatSuccessImpl value, $Res Function(_$ChatSuccessImpl) then) =
      __$$ChatSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessageItem> listChats});
}

/// @nodoc
class __$$ChatSuccessImplCopyWithImpl<$Res>
    extends _$ChatStatusCopyWithImpl<$Res, _$ChatSuccessImpl>
    implements _$$ChatSuccessImplCopyWith<$Res> {
  __$$ChatSuccessImplCopyWithImpl(
      _$ChatSuccessImpl _value, $Res Function(_$ChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listChats = null,
  }) {
    return _then(_$ChatSuccessImpl(
      null == listChats
          ? _value._listChats
          : listChats // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageItem>,
    ));
  }
}

/// @nodoc

class _$ChatSuccessImpl implements ChatSuccess {
  const _$ChatSuccessImpl(final List<ChatMessageItem> listChats)
      : _listChats = listChats;

  final List<ChatMessageItem> _listChats;
  @override
  List<ChatMessageItem> get listChats {
    if (_listChats is EqualUnmodifiableListView) return _listChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listChats);
  }

  @override
  String toString() {
    return 'ChatStatus.success(listChats: $listChats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listChats, _listChats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listChats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSuccessImplCopyWith<_$ChatSuccessImpl> get copyWith =>
      __$$ChatSuccessImplCopyWithImpl<_$ChatSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<ChatMessageItem> listChats) success,
  }) {
    return success(listChats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(List<ChatMessageItem> listChats)? success,
  }) {
    return success?.call(listChats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<ChatMessageItem> listChats)? success,
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
    required TResult Function(ChatInitial value) initial,
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatFailure value) failure,
    required TResult Function(ChatSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatInitial value)? initial,
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatFailure value)? failure,
    TResult? Function(ChatSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInitial value)? initial,
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatFailure value)? failure,
    TResult Function(ChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatSuccess implements ChatStatus {
  const factory ChatSuccess(final List<ChatMessageItem> listChats) =
      _$ChatSuccessImpl;

  List<ChatMessageItem> get listChats;
  @JsonKey(ignore: true)
  _$$ChatSuccessImplCopyWith<_$ChatSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatNavigationStatus {
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
    required TResult Function(ChatNavigationInitial value) initial,
    required TResult Function(ChatNavigationLoading value) loading,
    required TResult Function(ChatNavigationFailure value) failure,
    required TResult Function(ChatNavigationCreateSuccess value) createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNavigationInitial value)? initial,
    TResult? Function(ChatNavigationLoading value)? loading,
    TResult? Function(ChatNavigationFailure value)? failure,
    TResult? Function(ChatNavigationCreateSuccess value)? createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNavigationInitial value)? initial,
    TResult Function(ChatNavigationLoading value)? loading,
    TResult Function(ChatNavigationFailure value)? failure,
    TResult Function(ChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNavigationStatusCopyWith<$Res> {
  factory $ChatNavigationStatusCopyWith(ChatNavigationStatus value,
          $Res Function(ChatNavigationStatus) then) =
      _$ChatNavigationStatusCopyWithImpl<$Res, ChatNavigationStatus>;
}

/// @nodoc
class _$ChatNavigationStatusCopyWithImpl<$Res,
        $Val extends ChatNavigationStatus>
    implements $ChatNavigationStatusCopyWith<$Res> {
  _$ChatNavigationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatNavigationInitialImplCopyWith<$Res> {
  factory _$$ChatNavigationInitialImplCopyWith(
          _$ChatNavigationInitialImpl value,
          $Res Function(_$ChatNavigationInitialImpl) then) =
      __$$ChatNavigationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatNavigationInitialImplCopyWithImpl<$Res>
    extends _$ChatNavigationStatusCopyWithImpl<$Res,
        _$ChatNavigationInitialImpl>
    implements _$$ChatNavigationInitialImplCopyWith<$Res> {
  __$$ChatNavigationInitialImplCopyWithImpl(_$ChatNavigationInitialImpl _value,
      $Res Function(_$ChatNavigationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatNavigationInitialImpl implements ChatNavigationInitial {
  const _$ChatNavigationInitialImpl();

  @override
  String toString() {
    return 'ChatNavigationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNavigationInitialImpl);
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
    required TResult Function(ChatNavigationInitial value) initial,
    required TResult Function(ChatNavigationLoading value) loading,
    required TResult Function(ChatNavigationFailure value) failure,
    required TResult Function(ChatNavigationCreateSuccess value) createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNavigationInitial value)? initial,
    TResult? Function(ChatNavigationLoading value)? loading,
    TResult? Function(ChatNavigationFailure value)? failure,
    TResult? Function(ChatNavigationCreateSuccess value)? createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNavigationInitial value)? initial,
    TResult Function(ChatNavigationLoading value)? loading,
    TResult Function(ChatNavigationFailure value)? failure,
    TResult Function(ChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatNavigationInitial implements ChatNavigationStatus {
  const factory ChatNavigationInitial() = _$ChatNavigationInitialImpl;
}

/// @nodoc
abstract class _$$ChatNavigationLoadingImplCopyWith<$Res> {
  factory _$$ChatNavigationLoadingImplCopyWith(
          _$ChatNavigationLoadingImpl value,
          $Res Function(_$ChatNavigationLoadingImpl) then) =
      __$$ChatNavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatNavigationLoadingImplCopyWithImpl<$Res>
    extends _$ChatNavigationStatusCopyWithImpl<$Res,
        _$ChatNavigationLoadingImpl>
    implements _$$ChatNavigationLoadingImplCopyWith<$Res> {
  __$$ChatNavigationLoadingImplCopyWithImpl(_$ChatNavigationLoadingImpl _value,
      $Res Function(_$ChatNavigationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatNavigationLoadingImpl implements ChatNavigationLoading {
  const _$ChatNavigationLoadingImpl();

  @override
  String toString() {
    return 'ChatNavigationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNavigationLoadingImpl);
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
    required TResult Function(ChatNavigationInitial value) initial,
    required TResult Function(ChatNavigationLoading value) loading,
    required TResult Function(ChatNavigationFailure value) failure,
    required TResult Function(ChatNavigationCreateSuccess value) createSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNavigationInitial value)? initial,
    TResult? Function(ChatNavigationLoading value)? loading,
    TResult? Function(ChatNavigationFailure value)? failure,
    TResult? Function(ChatNavigationCreateSuccess value)? createSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNavigationInitial value)? initial,
    TResult Function(ChatNavigationLoading value)? loading,
    TResult Function(ChatNavigationFailure value)? failure,
    TResult Function(ChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatNavigationLoading implements ChatNavigationStatus {
  const factory ChatNavigationLoading() = _$ChatNavigationLoadingImpl;
}

/// @nodoc
abstract class _$$ChatNavigationFailureImplCopyWith<$Res> {
  factory _$$ChatNavigationFailureImplCopyWith(
          _$ChatNavigationFailureImpl value,
          $Res Function(_$ChatNavigationFailureImpl) then) =
      __$$ChatNavigationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ChatNavigationFailureImplCopyWithImpl<$Res>
    extends _$ChatNavigationStatusCopyWithImpl<$Res,
        _$ChatNavigationFailureImpl>
    implements _$$ChatNavigationFailureImplCopyWith<$Res> {
  __$$ChatNavigationFailureImplCopyWithImpl(_$ChatNavigationFailureImpl _value,
      $Res Function(_$ChatNavigationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ChatNavigationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ChatNavigationFailureImpl implements ChatNavigationFailure {
  const _$ChatNavigationFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChatNavigationStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNavigationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNavigationFailureImplCopyWith<_$ChatNavigationFailureImpl>
      get copyWith => __$$ChatNavigationFailureImplCopyWithImpl<
          _$ChatNavigationFailureImpl>(this, _$identity);

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
    required TResult Function(ChatNavigationInitial value) initial,
    required TResult Function(ChatNavigationLoading value) loading,
    required TResult Function(ChatNavigationFailure value) failure,
    required TResult Function(ChatNavigationCreateSuccess value) createSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNavigationInitial value)? initial,
    TResult? Function(ChatNavigationLoading value)? loading,
    TResult? Function(ChatNavigationFailure value)? failure,
    TResult? Function(ChatNavigationCreateSuccess value)? createSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNavigationInitial value)? initial,
    TResult Function(ChatNavigationLoading value)? loading,
    TResult Function(ChatNavigationFailure value)? failure,
    TResult Function(ChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatNavigationFailure implements ChatNavigationStatus {
  const factory ChatNavigationFailure(final Failure failure) =
      _$ChatNavigationFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ChatNavigationFailureImplCopyWith<_$ChatNavigationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatNavigationCreateSuccessImplCopyWith<$Res> {
  factory _$$ChatNavigationCreateSuccessImplCopyWith(
          _$ChatNavigationCreateSuccessImpl value,
          $Res Function(_$ChatNavigationCreateSuccessImpl) then) =
      __$$ChatNavigationCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatNavigationCreateSuccessImplCopyWithImpl<$Res>
    extends _$ChatNavigationStatusCopyWithImpl<$Res,
        _$ChatNavigationCreateSuccessImpl>
    implements _$$ChatNavigationCreateSuccessImplCopyWith<$Res> {
  __$$ChatNavigationCreateSuccessImplCopyWithImpl(
      _$ChatNavigationCreateSuccessImpl _value,
      $Res Function(_$ChatNavigationCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatNavigationCreateSuccessImpl implements ChatNavigationCreateSuccess {
  const _$ChatNavigationCreateSuccessImpl();

  @override
  String toString() {
    return 'ChatNavigationStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNavigationCreateSuccessImpl);
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
    required TResult Function(ChatNavigationInitial value) initial,
    required TResult Function(ChatNavigationLoading value) loading,
    required TResult Function(ChatNavigationFailure value) failure,
    required TResult Function(ChatNavigationCreateSuccess value) createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatNavigationInitial value)? initial,
    TResult? Function(ChatNavigationLoading value)? loading,
    TResult? Function(ChatNavigationFailure value)? failure,
    TResult? Function(ChatNavigationCreateSuccess value)? createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatNavigationInitial value)? initial,
    TResult Function(ChatNavigationLoading value)? loading,
    TResult Function(ChatNavigationFailure value)? failure,
    TResult Function(ChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatNavigationCreateSuccess implements ChatNavigationStatus {
  const factory ChatNavigationCreateSuccess() =
      _$ChatNavigationCreateSuccessImpl;
}
