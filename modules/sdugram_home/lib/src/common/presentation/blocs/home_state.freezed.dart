// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  HomeEventState get eventState => throw _privateConstructorUsedError;
  HomeEventDetailState get detailEventState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeEventState eventState, HomeEventDetailState detailEventState});

  $HomeEventStateCopyWith<$Res> get eventState;
  $HomeEventDetailStateCopyWith<$Res> get detailEventState;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventState = null,
    Object? detailEventState = null,
  }) {
    return _then(_value.copyWith(
      eventState: null == eventState
          ? _value.eventState
          : eventState // ignore: cast_nullable_to_non_nullable
              as HomeEventState,
      detailEventState: null == detailEventState
          ? _value.detailEventState
          : detailEventState // ignore: cast_nullable_to_non_nullable
              as HomeEventDetailState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeEventStateCopyWith<$Res> get eventState {
    return $HomeEventStateCopyWith<$Res>(_value.eventState, (value) {
      return _then(_value.copyWith(eventState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeEventDetailStateCopyWith<$Res> get detailEventState {
    return $HomeEventDetailStateCopyWith<$Res>(_value.detailEventState,
        (value) {
      return _then(_value.copyWith(detailEventState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeEventState eventState, HomeEventDetailState detailEventState});

  @override
  $HomeEventStateCopyWith<$Res> get eventState;
  @override
  $HomeEventDetailStateCopyWith<$Res> get detailEventState;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventState = null,
    Object? detailEventState = null,
  }) {
    return _then(_$HomeStateImpl(
      eventState: null == eventState
          ? _value.eventState
          : eventState // ignore: cast_nullable_to_non_nullable
              as HomeEventState,
      detailEventState: null == detailEventState
          ? _value.detailEventState
          : detailEventState // ignore: cast_nullable_to_non_nullable
              as HomeEventDetailState,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.eventState = const HomeEventInitial(),
      this.detailEventState = const HomeEventDetailInitial()});

  @override
  @JsonKey()
  final HomeEventState eventState;
  @override
  @JsonKey()
  final HomeEventDetailState detailEventState;

  @override
  String toString() {
    return 'HomeState(eventState: $eventState, detailEventState: $detailEventState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.eventState, eventState) ||
                other.eventState == eventState) &&
            (identical(other.detailEventState, detailEventState) ||
                other.detailEventState == detailEventState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventState, detailEventState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final HomeEventState eventState,
      final HomeEventDetailState detailEventState}) = _$HomeStateImpl;

  @override
  HomeEventState get eventState;
  @override
  HomeEventDetailState get detailEventState;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ListArticleModel listArticles) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ListArticleModel listArticles)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ListArticleModel listArticles)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInitial value) initial,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInitial value)? initial,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInitial value)? initial,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventStateCopyWith<$Res> {
  factory $HomeEventStateCopyWith(
          HomeEventState value, $Res Function(HomeEventState) then) =
      _$HomeEventStateCopyWithImpl<$Res, HomeEventState>;
}

/// @nodoc
class _$HomeEventStateCopyWithImpl<$Res, $Val extends HomeEventState>
    implements $HomeEventStateCopyWith<$Res> {
  _$HomeEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeEventInitialImplCopyWith<$Res> {
  factory _$$HomeEventInitialImplCopyWith(_$HomeEventInitialImpl value,
          $Res Function(_$HomeEventInitialImpl) then) =
      __$$HomeEventInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventInitialImplCopyWithImpl<$Res>
    extends _$HomeEventStateCopyWithImpl<$Res, _$HomeEventInitialImpl>
    implements _$$HomeEventInitialImplCopyWith<$Res> {
  __$$HomeEventInitialImplCopyWithImpl(_$HomeEventInitialImpl _value,
      $Res Function(_$HomeEventInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventInitialImpl implements HomeEventInitial {
  const _$HomeEventInitialImpl();

  @override
  String toString() {
    return 'HomeEventState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeEventInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ListArticleModel listArticles) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ListArticleModel listArticles)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ListArticleModel listArticles)? success,
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
    required TResult Function(HomeEventInitial value) initial,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInitial value)? initial,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInitial value)? initial,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeEventInitial implements HomeEventState {
  const factory HomeEventInitial() = _$HomeEventInitialImpl;
}

/// @nodoc
abstract class _$$HomeEventLoadingImplCopyWith<$Res> {
  factory _$$HomeEventLoadingImplCopyWith(_$HomeEventLoadingImpl value,
          $Res Function(_$HomeEventLoadingImpl) then) =
      __$$HomeEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventLoadingImplCopyWithImpl<$Res>
    extends _$HomeEventStateCopyWithImpl<$Res, _$HomeEventLoadingImpl>
    implements _$$HomeEventLoadingImplCopyWith<$Res> {
  __$$HomeEventLoadingImplCopyWithImpl(_$HomeEventLoadingImpl _value,
      $Res Function(_$HomeEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventLoadingImpl implements HomeEventLoading {
  const _$HomeEventLoadingImpl();

  @override
  String toString() {
    return 'HomeEventState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ListArticleModel listArticles) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ListArticleModel listArticles)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ListArticleModel listArticles)? success,
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
    required TResult Function(HomeEventInitial value) initial,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInitial value)? initial,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInitial value)? initial,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeEventLoading implements HomeEventState {
  const factory HomeEventLoading() = _$HomeEventLoadingImpl;
}

/// @nodoc
abstract class _$$HomeEventFailureImplCopyWith<$Res> {
  factory _$$HomeEventFailureImplCopyWith(_$HomeEventFailureImpl value,
          $Res Function(_$HomeEventFailureImpl) then) =
      __$$HomeEventFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$HomeEventFailureImplCopyWithImpl<$Res>
    extends _$HomeEventStateCopyWithImpl<$Res, _$HomeEventFailureImpl>
    implements _$$HomeEventFailureImplCopyWith<$Res> {
  __$$HomeEventFailureImplCopyWithImpl(_$HomeEventFailureImpl _value,
      $Res Function(_$HomeEventFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HomeEventFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HomeEventFailureImpl implements HomeEventFailure {
  const _$HomeEventFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HomeEventState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventFailureImplCopyWith<_$HomeEventFailureImpl> get copyWith =>
      __$$HomeEventFailureImplCopyWithImpl<_$HomeEventFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ListArticleModel listArticles) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ListArticleModel listArticles)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ListArticleModel listArticles)? success,
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
    required TResult Function(HomeEventInitial value) initial,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInitial value)? initial,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInitial value)? initial,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeEventFailure implements HomeEventState {
  const factory HomeEventFailure(final Failure failure) =
      _$HomeEventFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$HomeEventFailureImplCopyWith<_$HomeEventFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventSuccessImplCopyWith<$Res> {
  factory _$$HomeEventSuccessImplCopyWith(_$HomeEventSuccessImpl value,
          $Res Function(_$HomeEventSuccessImpl) then) =
      __$$HomeEventSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListArticleModel listArticles});
}

/// @nodoc
class __$$HomeEventSuccessImplCopyWithImpl<$Res>
    extends _$HomeEventStateCopyWithImpl<$Res, _$HomeEventSuccessImpl>
    implements _$$HomeEventSuccessImplCopyWith<$Res> {
  __$$HomeEventSuccessImplCopyWithImpl(_$HomeEventSuccessImpl _value,
      $Res Function(_$HomeEventSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listArticles = null,
  }) {
    return _then(_$HomeEventSuccessImpl(
      null == listArticles
          ? _value.listArticles
          : listArticles // ignore: cast_nullable_to_non_nullable
              as ListArticleModel,
    ));
  }
}

/// @nodoc

class _$HomeEventSuccessImpl implements HomeEventSuccess {
  const _$HomeEventSuccessImpl(this.listArticles);

  @override
  final ListArticleModel listArticles;

  @override
  String toString() {
    return 'HomeEventState.success(listArticles: $listArticles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventSuccessImpl &&
            (identical(other.listArticles, listArticles) ||
                other.listArticles == listArticles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listArticles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventSuccessImplCopyWith<_$HomeEventSuccessImpl> get copyWith =>
      __$$HomeEventSuccessImplCopyWithImpl<_$HomeEventSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ListArticleModel listArticles) success,
  }) {
    return success(listArticles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ListArticleModel listArticles)? success,
  }) {
    return success?.call(listArticles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ListArticleModel listArticles)? success,
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
    required TResult Function(HomeEventInitial value) initial,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInitial value)? initial,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInitial value)? initial,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeEventSuccess implements HomeEventState {
  const factory HomeEventSuccess(final ListArticleModel listArticles) =
      _$HomeEventSuccessImpl;

  ListArticleModel get listArticles;
  @JsonKey(ignore: true)
  _$$HomeEventSuccessImplCopyWith<_$HomeEventSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEventDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventDetailStateCopyWith<$Res> {
  factory $HomeEventDetailStateCopyWith(HomeEventDetailState value,
          $Res Function(HomeEventDetailState) then) =
      _$HomeEventDetailStateCopyWithImpl<$Res, HomeEventDetailState>;
}

/// @nodoc
class _$HomeEventDetailStateCopyWithImpl<$Res,
        $Val extends HomeEventDetailState>
    implements $HomeEventDetailStateCopyWith<$Res> {
  _$HomeEventDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeEventDetailInitialImplCopyWith<$Res> {
  factory _$$HomeEventDetailInitialImplCopyWith(
          _$HomeEventDetailInitialImpl value,
          $Res Function(_$HomeEventDetailInitialImpl) then) =
      __$$HomeEventDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventDetailInitialImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res,
        _$HomeEventDetailInitialImpl>
    implements _$$HomeEventDetailInitialImplCopyWith<$Res> {
  __$$HomeEventDetailInitialImplCopyWithImpl(
      _$HomeEventDetailInitialImpl _value,
      $Res Function(_$HomeEventDetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventDetailInitialImpl implements HomeEventDetailInitial {
  const _$HomeEventDetailInitialImpl();

  @override
  String toString() {
    return 'HomeEventDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
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
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailInitial implements HomeEventDetailState {
  const factory HomeEventDetailInitial() = _$HomeEventDetailInitialImpl;
}

/// @nodoc
abstract class _$$HomeEventDetailLoadingImplCopyWith<$Res> {
  factory _$$HomeEventDetailLoadingImplCopyWith(
          _$HomeEventDetailLoadingImpl value,
          $Res Function(_$HomeEventDetailLoadingImpl) then) =
      __$$HomeEventDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventDetailLoadingImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res,
        _$HomeEventDetailLoadingImpl>
    implements _$$HomeEventDetailLoadingImplCopyWith<$Res> {
  __$$HomeEventDetailLoadingImplCopyWithImpl(
      _$HomeEventDetailLoadingImpl _value,
      $Res Function(_$HomeEventDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventDetailLoadingImpl implements HomeEventDetailLoading {
  const _$HomeEventDetailLoadingImpl();

  @override
  String toString() {
    return 'HomeEventDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
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
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailLoading implements HomeEventDetailState {
  const factory HomeEventDetailLoading() = _$HomeEventDetailLoadingImpl;
}

/// @nodoc
abstract class _$$HomeEventDetailFailureImplCopyWith<$Res> {
  factory _$$HomeEventDetailFailureImplCopyWith(
          _$HomeEventDetailFailureImpl value,
          $Res Function(_$HomeEventDetailFailureImpl) then) =
      __$$HomeEventDetailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$HomeEventDetailFailureImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res,
        _$HomeEventDetailFailureImpl>
    implements _$$HomeEventDetailFailureImplCopyWith<$Res> {
  __$$HomeEventDetailFailureImplCopyWithImpl(
      _$HomeEventDetailFailureImpl _value,
      $Res Function(_$HomeEventDetailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$HomeEventDetailFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$HomeEventDetailFailureImpl implements HomeEventDetailFailure {
  const _$HomeEventDetailFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HomeEventDetailState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventDetailFailureImplCopyWith<_$HomeEventDetailFailureImpl>
      get copyWith => __$$HomeEventDetailFailureImplCopyWithImpl<
          _$HomeEventDetailFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
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
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailFailure implements HomeEventDetailState {
  const factory HomeEventDetailFailure(final Failure failure) =
      _$HomeEventDetailFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$HomeEventDetailFailureImplCopyWith<_$HomeEventDetailFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventDetailSuccessImplCopyWith<$Res> {
  factory _$$HomeEventDetailSuccessImplCopyWith(
          _$HomeEventDetailSuccessImpl value,
          $Res Function(_$HomeEventDetailSuccessImpl) then) =
      __$$HomeEventDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleDetailModel article});
}

/// @nodoc
class __$$HomeEventDetailSuccessImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res,
        _$HomeEventDetailSuccessImpl>
    implements _$$HomeEventDetailSuccessImplCopyWith<$Res> {
  __$$HomeEventDetailSuccessImplCopyWithImpl(
      _$HomeEventDetailSuccessImpl _value,
      $Res Function(_$HomeEventDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$HomeEventDetailSuccessImpl(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleDetailModel,
    ));
  }
}

/// @nodoc

class _$HomeEventDetailSuccessImpl implements HomeEventDetailSuccess {
  const _$HomeEventDetailSuccessImpl(this.article);

  @override
  final ArticleDetailModel article;

  @override
  String toString() {
    return 'HomeEventDetailState.success(article: $article)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailSuccessImpl &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventDetailSuccessImplCopyWith<_$HomeEventDetailSuccessImpl>
      get copyWith => __$$HomeEventDetailSuccessImplCopyWithImpl<
          _$HomeEventDetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return success(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return success?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailSuccess implements HomeEventDetailState {
  const factory HomeEventDetailSuccess(final ArticleDetailModel article) =
      _$HomeEventDetailSuccessImpl;

  ArticleDetailModel get article;
  @JsonKey(ignore: true)
  _$$HomeEventDetailSuccessImplCopyWith<_$HomeEventDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventDetailCardsImplCopyWith<$Res> {
  factory _$$HomeEventDetailCardsImplCopyWith(_$HomeEventDetailCardsImpl value,
          $Res Function(_$HomeEventDetailCardsImpl) then) =
      __$$HomeEventDetailCardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListCreditCardModel cards});
}

/// @nodoc
class __$$HomeEventDetailCardsImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res, _$HomeEventDetailCardsImpl>
    implements _$$HomeEventDetailCardsImplCopyWith<$Res> {
  __$$HomeEventDetailCardsImplCopyWithImpl(_$HomeEventDetailCardsImpl _value,
      $Res Function(_$HomeEventDetailCardsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$HomeEventDetailCardsImpl(
      null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as ListCreditCardModel,
    ));
  }
}

/// @nodoc

class _$HomeEventDetailCardsImpl implements HomeEventDetailCards {
  const _$HomeEventDetailCardsImpl(this.cards);

  @override
  final ListCreditCardModel cards;

  @override
  String toString() {
    return 'HomeEventDetailState.cards(cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailCardsImpl &&
            (identical(other.cards, cards) || other.cards == cards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventDetailCardsImplCopyWith<_$HomeEventDetailCardsImpl>
      get copyWith =>
          __$$HomeEventDetailCardsImplCopyWithImpl<_$HomeEventDetailCardsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return cards(this.cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return cards?.call(this.cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
    required TResult orElse(),
  }) {
    if (cards != null) {
      return cards(this.cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return cards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return cards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (cards != null) {
      return cards(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailCards implements HomeEventDetailState {
  const factory HomeEventDetailCards(final ListCreditCardModel cards) =
      _$HomeEventDetailCardsImpl;

  ListCreditCardModel get cards;
  @JsonKey(ignore: true)
  _$$HomeEventDetailCardsImplCopyWith<_$HomeEventDetailCardsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventDetailAddCardSuccessImplCopyWith<$Res> {
  factory _$$HomeEventDetailAddCardSuccessImplCopyWith(
          _$HomeEventDetailAddCardSuccessImpl value,
          $Res Function(_$HomeEventDetailAddCardSuccessImpl) then) =
      __$$HomeEventDetailAddCardSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventDetailAddCardSuccessImplCopyWithImpl<$Res>
    extends _$HomeEventDetailStateCopyWithImpl<$Res,
        _$HomeEventDetailAddCardSuccessImpl>
    implements _$$HomeEventDetailAddCardSuccessImplCopyWith<$Res> {
  __$$HomeEventDetailAddCardSuccessImplCopyWithImpl(
      _$HomeEventDetailAddCardSuccessImpl _value,
      $Res Function(_$HomeEventDetailAddCardSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventDetailAddCardSuccessImpl
    implements HomeEventDetailAddCardSuccess {
  const _$HomeEventDetailAddCardSuccessImpl();

  @override
  String toString() {
    return 'HomeEventDetailState.addSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDetailAddCardSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ArticleDetailModel article) success,
    required TResult Function(ListCreditCardModel cards) cards,
    required TResult Function() addSuccess,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ArticleDetailModel article)? success,
    TResult? Function(ListCreditCardModel cards)? cards,
    TResult? Function()? addSuccess,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ArticleDetailModel article)? success,
    TResult Function(ListCreditCardModel cards)? cards,
    TResult Function()? addSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventDetailInitial value) initial,
    required TResult Function(HomeEventDetailLoading value) loading,
    required TResult Function(HomeEventDetailFailure value) failure,
    required TResult Function(HomeEventDetailSuccess value) success,
    required TResult Function(HomeEventDetailCards value) cards,
    required TResult Function(HomeEventDetailAddCardSuccess value) addSuccess,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventDetailInitial value)? initial,
    TResult? Function(HomeEventDetailLoading value)? loading,
    TResult? Function(HomeEventDetailFailure value)? failure,
    TResult? Function(HomeEventDetailSuccess value)? success,
    TResult? Function(HomeEventDetailCards value)? cards,
    TResult? Function(HomeEventDetailAddCardSuccess value)? addSuccess,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventDetailInitial value)? initial,
    TResult Function(HomeEventDetailLoading value)? loading,
    TResult Function(HomeEventDetailFailure value)? failure,
    TResult Function(HomeEventDetailSuccess value)? success,
    TResult Function(HomeEventDetailCards value)? cards,
    TResult Function(HomeEventDetailAddCardSuccess value)? addSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeEventDetailAddCardSuccess implements HomeEventDetailState {
  const factory HomeEventDetailAddCardSuccess() =
      _$HomeEventDetailAddCardSuccessImpl;
}
