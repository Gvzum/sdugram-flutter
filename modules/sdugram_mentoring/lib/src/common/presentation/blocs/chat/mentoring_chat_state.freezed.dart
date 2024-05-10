// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentoring_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MentoringChatState {
  MentoringChatStatus get mentoringStatus => throw _privateConstructorUsedError;
  MentoringChatNavigationStatus get navigation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentoringChatStateCopyWith<MentoringChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringChatStateCopyWith<$Res> {
  factory $MentoringChatStateCopyWith(
          MentoringChatState value, $Res Function(MentoringChatState) then) =
      _$MentoringChatStateCopyWithImpl<$Res, MentoringChatState>;
  @useResult
  $Res call(
      {MentoringChatStatus mentoringStatus,
      MentoringChatNavigationStatus navigation});

  $MentoringChatStatusCopyWith<$Res> get mentoringStatus;
  $MentoringChatNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class _$MentoringChatStateCopyWithImpl<$Res, $Val extends MentoringChatState>
    implements $MentoringChatStateCopyWith<$Res> {
  _$MentoringChatStateCopyWithImpl(this._value, this._then);

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
              as MentoringChatStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringChatNavigationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringChatStatusCopyWith<$Res> get mentoringStatus {
    return $MentoringChatStatusCopyWith<$Res>(_value.mentoringStatus, (value) {
      return _then(_value.copyWith(mentoringStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MentoringChatNavigationStatusCopyWith<$Res> get navigation {
    return $MentoringChatNavigationStatusCopyWith<$Res>(_value.navigation,
        (value) {
      return _then(_value.copyWith(navigation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MentoringChatStateImplCopyWith<$Res>
    implements $MentoringChatStateCopyWith<$Res> {
  factory _$$MentoringChatStateImplCopyWith(_$MentoringChatStateImpl value,
          $Res Function(_$MentoringChatStateImpl) then) =
      __$$MentoringChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MentoringChatStatus mentoringStatus,
      MentoringChatNavigationStatus navigation});

  @override
  $MentoringChatStatusCopyWith<$Res> get mentoringStatus;
  @override
  $MentoringChatNavigationStatusCopyWith<$Res> get navigation;
}

/// @nodoc
class __$$MentoringChatStateImplCopyWithImpl<$Res>
    extends _$MentoringChatStateCopyWithImpl<$Res, _$MentoringChatStateImpl>
    implements _$$MentoringChatStateImplCopyWith<$Res> {
  __$$MentoringChatStateImplCopyWithImpl(_$MentoringChatStateImpl _value,
      $Res Function(_$MentoringChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mentoringStatus = null,
    Object? navigation = null,
  }) {
    return _then(_$MentoringChatStateImpl(
      mentoringStatus: null == mentoringStatus
          ? _value.mentoringStatus
          : mentoringStatus // ignore: cast_nullable_to_non_nullable
              as MentoringChatStatus,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as MentoringChatNavigationStatus,
    ));
  }
}

/// @nodoc

class _$MentoringChatStateImpl implements _MentoringChatState {
  const _$MentoringChatStateImpl(
      {this.mentoringStatus = const MentoringChatInitial(),
      this.navigation = const MentoringChatNavigationInitial()});

  @override
  @JsonKey()
  final MentoringChatStatus mentoringStatus;
  @override
  @JsonKey()
  final MentoringChatNavigationStatus navigation;

  @override
  String toString() {
    return 'MentoringChatState(mentoringStatus: $mentoringStatus, navigation: $navigation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatStateImpl &&
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
  _$$MentoringChatStateImplCopyWith<_$MentoringChatStateImpl> get copyWith =>
      __$$MentoringChatStateImplCopyWithImpl<_$MentoringChatStateImpl>(
          this, _$identity);
}

abstract class _MentoringChatState implements MentoringChatState {
  const factory _MentoringChatState(
          {final MentoringChatStatus mentoringStatus,
          final MentoringChatNavigationStatus navigation}) =
      _$MentoringChatStateImpl;

  @override
  MentoringChatStatus get mentoringStatus;
  @override
  MentoringChatNavigationStatus get navigation;
  @override
  @JsonKey(ignore: true)
  _$$MentoringChatStateImplCopyWith<_$MentoringChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentoringChatStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() emptySuccess,
    required TResult Function(List<MenteeRequestModel> listMentee) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? emptySuccess,
    TResult? Function(List<MenteeRequestModel> listMentee)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? emptySuccess,
    TResult Function(List<MenteeRequestModel> listMentee)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MentoringChatInitial value) initial,
    required TResult Function(MentoringChatLoading value) loading,
    required TResult Function(MentoringChatEmptySuccess value) emptySuccess,
    required TResult Function(MentoringChatSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatInitial value)? initial,
    TResult? Function(MentoringChatLoading value)? loading,
    TResult? Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringChatSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatInitial value)? initial,
    TResult Function(MentoringChatLoading value)? loading,
    TResult Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult Function(MentoringChatSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringChatStatusCopyWith<$Res> {
  factory $MentoringChatStatusCopyWith(
          MentoringChatStatus value, $Res Function(MentoringChatStatus) then) =
      _$MentoringChatStatusCopyWithImpl<$Res, MentoringChatStatus>;
}

/// @nodoc
class _$MentoringChatStatusCopyWithImpl<$Res, $Val extends MentoringChatStatus>
    implements $MentoringChatStatusCopyWith<$Res> {
  _$MentoringChatStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringChatInitialImplCopyWith<$Res> {
  factory _$$MentoringChatInitialImplCopyWith(_$MentoringChatInitialImpl value,
          $Res Function(_$MentoringChatInitialImpl) then) =
      __$$MentoringChatInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatInitialImplCopyWithImpl<$Res>
    extends _$MentoringChatStatusCopyWithImpl<$Res, _$MentoringChatInitialImpl>
    implements _$$MentoringChatInitialImplCopyWith<$Res> {
  __$$MentoringChatInitialImplCopyWithImpl(_$MentoringChatInitialImpl _value,
      $Res Function(_$MentoringChatInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatInitialImpl implements MentoringChatInitial {
  const _$MentoringChatInitialImpl();

  @override
  String toString() {
    return 'MentoringChatStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
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
    required TResult Function(MentoringChatInitial value) initial,
    required TResult Function(MentoringChatLoading value) loading,
    required TResult Function(MentoringChatEmptySuccess value) emptySuccess,
    required TResult Function(MentoringChatSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatInitial value)? initial,
    TResult? Function(MentoringChatLoading value)? loading,
    TResult? Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringChatSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatInitial value)? initial,
    TResult Function(MentoringChatLoading value)? loading,
    TResult Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult Function(MentoringChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringChatInitial implements MentoringChatStatus {
  const factory MentoringChatInitial() = _$MentoringChatInitialImpl;
}

/// @nodoc
abstract class _$$MentoringChatLoadingImplCopyWith<$Res> {
  factory _$$MentoringChatLoadingImplCopyWith(_$MentoringChatLoadingImpl value,
          $Res Function(_$MentoringChatLoadingImpl) then) =
      __$$MentoringChatLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatLoadingImplCopyWithImpl<$Res>
    extends _$MentoringChatStatusCopyWithImpl<$Res, _$MentoringChatLoadingImpl>
    implements _$$MentoringChatLoadingImplCopyWith<$Res> {
  __$$MentoringChatLoadingImplCopyWithImpl(_$MentoringChatLoadingImpl _value,
      $Res Function(_$MentoringChatLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatLoadingImpl implements MentoringChatLoading {
  const _$MentoringChatLoadingImpl();

  @override
  String toString() {
    return 'MentoringChatStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
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
    required TResult Function(MentoringChatInitial value) initial,
    required TResult Function(MentoringChatLoading value) loading,
    required TResult Function(MentoringChatEmptySuccess value) emptySuccess,
    required TResult Function(MentoringChatSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatInitial value)? initial,
    TResult? Function(MentoringChatLoading value)? loading,
    TResult? Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringChatSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatInitial value)? initial,
    TResult Function(MentoringChatLoading value)? loading,
    TResult Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult Function(MentoringChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringChatLoading implements MentoringChatStatus {
  const factory MentoringChatLoading() = _$MentoringChatLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringChatEmptySuccessImplCopyWith<$Res> {
  factory _$$MentoringChatEmptySuccessImplCopyWith(
          _$MentoringChatEmptySuccessImpl value,
          $Res Function(_$MentoringChatEmptySuccessImpl) then) =
      __$$MentoringChatEmptySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatEmptySuccessImplCopyWithImpl<$Res>
    extends _$MentoringChatStatusCopyWithImpl<$Res,
        _$MentoringChatEmptySuccessImpl>
    implements _$$MentoringChatEmptySuccessImplCopyWith<$Res> {
  __$$MentoringChatEmptySuccessImplCopyWithImpl(
      _$MentoringChatEmptySuccessImpl _value,
      $Res Function(_$MentoringChatEmptySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatEmptySuccessImpl implements MentoringChatEmptySuccess {
  const _$MentoringChatEmptySuccessImpl();

  @override
  String toString() {
    return 'MentoringChatStatus.emptySuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatEmptySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
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
    required TResult Function(MentoringChatInitial value) initial,
    required TResult Function(MentoringChatLoading value) loading,
    required TResult Function(MentoringChatEmptySuccess value) emptySuccess,
    required TResult Function(MentoringChatSuccess value) success,
  }) {
    return emptySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatInitial value)? initial,
    TResult? Function(MentoringChatLoading value)? loading,
    TResult? Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringChatSuccess value)? success,
  }) {
    return emptySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatInitial value)? initial,
    TResult Function(MentoringChatLoading value)? loading,
    TResult Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult Function(MentoringChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (emptySuccess != null) {
      return emptySuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringChatEmptySuccess implements MentoringChatStatus {
  const factory MentoringChatEmptySuccess() = _$MentoringChatEmptySuccessImpl;
}

/// @nodoc
abstract class _$$MentoringChatSuccessImplCopyWith<$Res> {
  factory _$$MentoringChatSuccessImplCopyWith(_$MentoringChatSuccessImpl value,
          $Res Function(_$MentoringChatSuccessImpl) then) =
      __$$MentoringChatSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MenteeRequestModel> listMentee});
}

/// @nodoc
class __$$MentoringChatSuccessImplCopyWithImpl<$Res>
    extends _$MentoringChatStatusCopyWithImpl<$Res, _$MentoringChatSuccessImpl>
    implements _$$MentoringChatSuccessImplCopyWith<$Res> {
  __$$MentoringChatSuccessImplCopyWithImpl(_$MentoringChatSuccessImpl _value,
      $Res Function(_$MentoringChatSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listMentee = null,
  }) {
    return _then(_$MentoringChatSuccessImpl(
      null == listMentee
          ? _value._listMentee
          : listMentee // ignore: cast_nullable_to_non_nullable
              as List<MenteeRequestModel>,
    ));
  }
}

/// @nodoc

class _$MentoringChatSuccessImpl implements MentoringChatSuccess {
  const _$MentoringChatSuccessImpl(final List<MenteeRequestModel> listMentee)
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
    return 'MentoringChatStatus.success(listMentee: $listMentee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listMentee, _listMentee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listMentee));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringChatSuccessImplCopyWith<_$MentoringChatSuccessImpl>
      get copyWith =>
          __$$MentoringChatSuccessImplCopyWithImpl<_$MentoringChatSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
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
    required TResult Function(MentoringChatInitial value) initial,
    required TResult Function(MentoringChatLoading value) loading,
    required TResult Function(MentoringChatEmptySuccess value) emptySuccess,
    required TResult Function(MentoringChatSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatInitial value)? initial,
    TResult? Function(MentoringChatLoading value)? loading,
    TResult? Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult? Function(MentoringChatSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatInitial value)? initial,
    TResult Function(MentoringChatLoading value)? loading,
    TResult Function(MentoringChatEmptySuccess value)? emptySuccess,
    TResult Function(MentoringChatSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MentoringChatSuccess implements MentoringChatStatus {
  const factory MentoringChatSuccess(
      final List<MenteeRequestModel> listMentee) = _$MentoringChatSuccessImpl;

  List<MenteeRequestModel> get listMentee;
  @JsonKey(ignore: true)
  _$$MentoringChatSuccessImplCopyWith<_$MentoringChatSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MentoringChatNavigationStatus {
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
    required TResult Function(MentoringChatNavigationInitial value) initial,
    required TResult Function(MentoringChatNavigationLoading value) loading,
    required TResult Function(MentoringChatNavigationFailure value) failure,
    required TResult Function(MentoringChatNavigationCreateSuccess value)
        createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatNavigationInitial value)? initial,
    TResult? Function(MentoringChatNavigationLoading value)? loading,
    TResult? Function(MentoringChatNavigationFailure value)? failure,
    TResult? Function(MentoringChatNavigationCreateSuccess value)?
        createSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatNavigationInitial value)? initial,
    TResult Function(MentoringChatNavigationLoading value)? loading,
    TResult Function(MentoringChatNavigationFailure value)? failure,
    TResult Function(MentoringChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentoringChatNavigationStatusCopyWith<$Res> {
  factory $MentoringChatNavigationStatusCopyWith(
          MentoringChatNavigationStatus value,
          $Res Function(MentoringChatNavigationStatus) then) =
      _$MentoringChatNavigationStatusCopyWithImpl<$Res,
          MentoringChatNavigationStatus>;
}

/// @nodoc
class _$MentoringChatNavigationStatusCopyWithImpl<$Res,
        $Val extends MentoringChatNavigationStatus>
    implements $MentoringChatNavigationStatusCopyWith<$Res> {
  _$MentoringChatNavigationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MentoringChatNavigationInitialImplCopyWith<$Res> {
  factory _$$MentoringChatNavigationInitialImplCopyWith(
          _$MentoringChatNavigationInitialImpl value,
          $Res Function(_$MentoringChatNavigationInitialImpl) then) =
      __$$MentoringChatNavigationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatNavigationInitialImplCopyWithImpl<$Res>
    extends _$MentoringChatNavigationStatusCopyWithImpl<$Res,
        _$MentoringChatNavigationInitialImpl>
    implements _$$MentoringChatNavigationInitialImplCopyWith<$Res> {
  __$$MentoringChatNavigationInitialImplCopyWithImpl(
      _$MentoringChatNavigationInitialImpl _value,
      $Res Function(_$MentoringChatNavigationInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatNavigationInitialImpl
    implements MentoringChatNavigationInitial {
  const _$MentoringChatNavigationInitialImpl();

  @override
  String toString() {
    return 'MentoringChatNavigationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatNavigationInitialImpl);
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
    required TResult Function(MentoringChatNavigationInitial value) initial,
    required TResult Function(MentoringChatNavigationLoading value) loading,
    required TResult Function(MentoringChatNavigationFailure value) failure,
    required TResult Function(MentoringChatNavigationCreateSuccess value)
        createSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatNavigationInitial value)? initial,
    TResult? Function(MentoringChatNavigationLoading value)? loading,
    TResult? Function(MentoringChatNavigationFailure value)? failure,
    TResult? Function(MentoringChatNavigationCreateSuccess value)?
        createSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatNavigationInitial value)? initial,
    TResult Function(MentoringChatNavigationLoading value)? loading,
    TResult Function(MentoringChatNavigationFailure value)? failure,
    TResult Function(MentoringChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MentoringChatNavigationInitial
    implements MentoringChatNavigationStatus {
  const factory MentoringChatNavigationInitial() =
      _$MentoringChatNavigationInitialImpl;
}

/// @nodoc
abstract class _$$MentoringChatNavigationLoadingImplCopyWith<$Res> {
  factory _$$MentoringChatNavigationLoadingImplCopyWith(
          _$MentoringChatNavigationLoadingImpl value,
          $Res Function(_$MentoringChatNavigationLoadingImpl) then) =
      __$$MentoringChatNavigationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatNavigationLoadingImplCopyWithImpl<$Res>
    extends _$MentoringChatNavigationStatusCopyWithImpl<$Res,
        _$MentoringChatNavigationLoadingImpl>
    implements _$$MentoringChatNavigationLoadingImplCopyWith<$Res> {
  __$$MentoringChatNavigationLoadingImplCopyWithImpl(
      _$MentoringChatNavigationLoadingImpl _value,
      $Res Function(_$MentoringChatNavigationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatNavigationLoadingImpl
    implements MentoringChatNavigationLoading {
  const _$MentoringChatNavigationLoadingImpl();

  @override
  String toString() {
    return 'MentoringChatNavigationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatNavigationLoadingImpl);
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
    required TResult Function(MentoringChatNavigationInitial value) initial,
    required TResult Function(MentoringChatNavigationLoading value) loading,
    required TResult Function(MentoringChatNavigationFailure value) failure,
    required TResult Function(MentoringChatNavigationCreateSuccess value)
        createSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatNavigationInitial value)? initial,
    TResult? Function(MentoringChatNavigationLoading value)? loading,
    TResult? Function(MentoringChatNavigationFailure value)? failure,
    TResult? Function(MentoringChatNavigationCreateSuccess value)?
        createSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatNavigationInitial value)? initial,
    TResult Function(MentoringChatNavigationLoading value)? loading,
    TResult Function(MentoringChatNavigationFailure value)? failure,
    TResult Function(MentoringChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MentoringChatNavigationLoading
    implements MentoringChatNavigationStatus {
  const factory MentoringChatNavigationLoading() =
      _$MentoringChatNavigationLoadingImpl;
}

/// @nodoc
abstract class _$$MentoringChatNavigationFailureImplCopyWith<$Res> {
  factory _$$MentoringChatNavigationFailureImplCopyWith(
          _$MentoringChatNavigationFailureImpl value,
          $Res Function(_$MentoringChatNavigationFailureImpl) then) =
      __$$MentoringChatNavigationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$MentoringChatNavigationFailureImplCopyWithImpl<$Res>
    extends _$MentoringChatNavigationStatusCopyWithImpl<$Res,
        _$MentoringChatNavigationFailureImpl>
    implements _$$MentoringChatNavigationFailureImplCopyWith<$Res> {
  __$$MentoringChatNavigationFailureImplCopyWithImpl(
      _$MentoringChatNavigationFailureImpl _value,
      $Res Function(_$MentoringChatNavigationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$MentoringChatNavigationFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$MentoringChatNavigationFailureImpl
    implements MentoringChatNavigationFailure {
  const _$MentoringChatNavigationFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MentoringChatNavigationStatus.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatNavigationFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentoringChatNavigationFailureImplCopyWith<
          _$MentoringChatNavigationFailureImpl>
      get copyWith => __$$MentoringChatNavigationFailureImplCopyWithImpl<
          _$MentoringChatNavigationFailureImpl>(this, _$identity);

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
    required TResult Function(MentoringChatNavigationInitial value) initial,
    required TResult Function(MentoringChatNavigationLoading value) loading,
    required TResult Function(MentoringChatNavigationFailure value) failure,
    required TResult Function(MentoringChatNavigationCreateSuccess value)
        createSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatNavigationInitial value)? initial,
    TResult? Function(MentoringChatNavigationLoading value)? loading,
    TResult? Function(MentoringChatNavigationFailure value)? failure,
    TResult? Function(MentoringChatNavigationCreateSuccess value)?
        createSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatNavigationInitial value)? initial,
    TResult Function(MentoringChatNavigationLoading value)? loading,
    TResult Function(MentoringChatNavigationFailure value)? failure,
    TResult Function(MentoringChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MentoringChatNavigationFailure
    implements MentoringChatNavigationStatus {
  const factory MentoringChatNavigationFailure(final Failure failure) =
      _$MentoringChatNavigationFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$MentoringChatNavigationFailureImplCopyWith<
          _$MentoringChatNavigationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentoringChatNavigationCreateSuccessImplCopyWith<$Res> {
  factory _$$MentoringChatNavigationCreateSuccessImplCopyWith(
          _$MentoringChatNavigationCreateSuccessImpl value,
          $Res Function(_$MentoringChatNavigationCreateSuccessImpl) then) =
      __$$MentoringChatNavigationCreateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MentoringChatNavigationCreateSuccessImplCopyWithImpl<$Res>
    extends _$MentoringChatNavigationStatusCopyWithImpl<$Res,
        _$MentoringChatNavigationCreateSuccessImpl>
    implements _$$MentoringChatNavigationCreateSuccessImplCopyWith<$Res> {
  __$$MentoringChatNavigationCreateSuccessImplCopyWithImpl(
      _$MentoringChatNavigationCreateSuccessImpl _value,
      $Res Function(_$MentoringChatNavigationCreateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MentoringChatNavigationCreateSuccessImpl
    implements MentoringChatNavigationCreateSuccess {
  const _$MentoringChatNavigationCreateSuccessImpl();

  @override
  String toString() {
    return 'MentoringChatNavigationStatus.createSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentoringChatNavigationCreateSuccessImpl);
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
    required TResult Function(MentoringChatNavigationInitial value) initial,
    required TResult Function(MentoringChatNavigationLoading value) loading,
    required TResult Function(MentoringChatNavigationFailure value) failure,
    required TResult Function(MentoringChatNavigationCreateSuccess value)
        createSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MentoringChatNavigationInitial value)? initial,
    TResult? Function(MentoringChatNavigationLoading value)? loading,
    TResult? Function(MentoringChatNavigationFailure value)? failure,
    TResult? Function(MentoringChatNavigationCreateSuccess value)?
        createSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MentoringChatNavigationInitial value)? initial,
    TResult Function(MentoringChatNavigationLoading value)? loading,
    TResult Function(MentoringChatNavigationFailure value)? failure,
    TResult Function(MentoringChatNavigationCreateSuccess value)? createSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class MentoringChatNavigationCreateSuccess
    implements MentoringChatNavigationStatus {
  const factory MentoringChatNavigationCreateSuccess() =
      _$MentoringChatNavigationCreateSuccessImpl;
}
