// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogPokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogPokemonEventCopyWith<$Res> {
  factory $CatalogPokemonEventCopyWith(
          CatalogPokemonEvent value, $Res Function(CatalogPokemonEvent) then) =
      _$CatalogPokemonEventCopyWithImpl<$Res, CatalogPokemonEvent>;
}

/// @nodoc
class _$CatalogPokemonEventCopyWithImpl<$Res, $Val extends CatalogPokemonEvent>
    implements $CatalogPokemonEventCopyWith<$Res> {
  _$CatalogPokemonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CatalogPokemonEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'CatalogPokemonEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CatalogPokemonEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$CatalogPokemonState {
  List<PokemonEntity> get pokemons => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonEntity> pokemons, int page) loading,
    required TResult Function(List<PokemonEntity> pokemons, int page) success,
    required TResult Function(
            List<PokemonEntity> pokemons, int page, String message)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult? Function(List<PokemonEntity> pokemons, int page)? success,
    TResult? Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult Function(List<PokemonEntity> pokemons, int page)? success,
    TResult Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogPokemonStateLoading value) loading,
    required TResult Function(CatalogPokemonStateSuccess value) success,
    required TResult Function(CatalogPokemonStateError value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogPokemonStateLoading value)? loading,
    TResult? Function(CatalogPokemonStateSuccess value)? success,
    TResult? Function(CatalogPokemonStateError value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogPokemonStateLoading value)? loading,
    TResult Function(CatalogPokemonStateSuccess value)? success,
    TResult Function(CatalogPokemonStateError value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogPokemonStateCopyWith<CatalogPokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogPokemonStateCopyWith<$Res> {
  factory $CatalogPokemonStateCopyWith(
          CatalogPokemonState value, $Res Function(CatalogPokemonState) then) =
      _$CatalogPokemonStateCopyWithImpl<$Res, CatalogPokemonState>;
  @useResult
  $Res call({List<PokemonEntity> pokemons, int page});
}

/// @nodoc
class _$CatalogPokemonStateCopyWithImpl<$Res, $Val extends CatalogPokemonState>
    implements $CatalogPokemonStateCopyWith<$Res> {
  _$CatalogPokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogPokemonStateLoadingImplCopyWith<$Res>
    implements $CatalogPokemonStateCopyWith<$Res> {
  factory _$$CatalogPokemonStateLoadingImplCopyWith(
          _$CatalogPokemonStateLoadingImpl value,
          $Res Function(_$CatalogPokemonStateLoadingImpl) then) =
      __$$CatalogPokemonStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonEntity> pokemons, int page});
}

/// @nodoc
class __$$CatalogPokemonStateLoadingImplCopyWithImpl<$Res>
    extends _$CatalogPokemonStateCopyWithImpl<$Res,
        _$CatalogPokemonStateLoadingImpl>
    implements _$$CatalogPokemonStateLoadingImplCopyWith<$Res> {
  __$$CatalogPokemonStateLoadingImplCopyWithImpl(
      _$CatalogPokemonStateLoadingImpl _value,
      $Res Function(_$CatalogPokemonStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? page = null,
  }) {
    return _then(_$CatalogPokemonStateLoadingImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CatalogPokemonStateLoadingImpl implements CatalogPokemonStateLoading {
  const _$CatalogPokemonStateLoadingImpl(
      {required final List<PokemonEntity> pokemons, required this.page})
      : _pokemons = pokemons;

  final List<PokemonEntity> _pokemons;
  @override
  List<PokemonEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  final int page;

  @override
  String toString() {
    return 'CatalogPokemonState.loading(pokemons: $pokemons, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogPokemonStateLoadingImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pokemons), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogPokemonStateLoadingImplCopyWith<_$CatalogPokemonStateLoadingImpl>
      get copyWith => __$$CatalogPokemonStateLoadingImplCopyWithImpl<
          _$CatalogPokemonStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonEntity> pokemons, int page) loading,
    required TResult Function(List<PokemonEntity> pokemons, int page) success,
    required TResult Function(
            List<PokemonEntity> pokemons, int page, String message)
        failure,
  }) {
    return loading(pokemons, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult? Function(List<PokemonEntity> pokemons, int page)? success,
    TResult? Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
  }) {
    return loading?.call(pokemons, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult Function(List<PokemonEntity> pokemons, int page)? success,
    TResult Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pokemons, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogPokemonStateLoading value) loading,
    required TResult Function(CatalogPokemonStateSuccess value) success,
    required TResult Function(CatalogPokemonStateError value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogPokemonStateLoading value)? loading,
    TResult? Function(CatalogPokemonStateSuccess value)? success,
    TResult? Function(CatalogPokemonStateError value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogPokemonStateLoading value)? loading,
    TResult Function(CatalogPokemonStateSuccess value)? success,
    TResult Function(CatalogPokemonStateError value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CatalogPokemonStateLoading implements CatalogPokemonState {
  const factory CatalogPokemonStateLoading(
      {required final List<PokemonEntity> pokemons,
      required final int page}) = _$CatalogPokemonStateLoadingImpl;

  @override
  List<PokemonEntity> get pokemons;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$CatalogPokemonStateLoadingImplCopyWith<_$CatalogPokemonStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CatalogPokemonStateSuccessImplCopyWith<$Res>
    implements $CatalogPokemonStateCopyWith<$Res> {
  factory _$$CatalogPokemonStateSuccessImplCopyWith(
          _$CatalogPokemonStateSuccessImpl value,
          $Res Function(_$CatalogPokemonStateSuccessImpl) then) =
      __$$CatalogPokemonStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonEntity> pokemons, int page});
}

/// @nodoc
class __$$CatalogPokemonStateSuccessImplCopyWithImpl<$Res>
    extends _$CatalogPokemonStateCopyWithImpl<$Res,
        _$CatalogPokemonStateSuccessImpl>
    implements _$$CatalogPokemonStateSuccessImplCopyWith<$Res> {
  __$$CatalogPokemonStateSuccessImplCopyWithImpl(
      _$CatalogPokemonStateSuccessImpl _value,
      $Res Function(_$CatalogPokemonStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? page = null,
  }) {
    return _then(_$CatalogPokemonStateSuccessImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CatalogPokemonStateSuccessImpl implements CatalogPokemonStateSuccess {
  const _$CatalogPokemonStateSuccessImpl(
      {required final List<PokemonEntity> pokemons, required this.page})
      : _pokemons = pokemons;

  final List<PokemonEntity> _pokemons;
  @override
  List<PokemonEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  final int page;

  @override
  String toString() {
    return 'CatalogPokemonState.success(pokemons: $pokemons, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogPokemonStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pokemons), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogPokemonStateSuccessImplCopyWith<_$CatalogPokemonStateSuccessImpl>
      get copyWith => __$$CatalogPokemonStateSuccessImplCopyWithImpl<
          _$CatalogPokemonStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonEntity> pokemons, int page) loading,
    required TResult Function(List<PokemonEntity> pokemons, int page) success,
    required TResult Function(
            List<PokemonEntity> pokemons, int page, String message)
        failure,
  }) {
    return success(pokemons, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult? Function(List<PokemonEntity> pokemons, int page)? success,
    TResult? Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
  }) {
    return success?.call(pokemons, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult Function(List<PokemonEntity> pokemons, int page)? success,
    TResult Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pokemons, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogPokemonStateLoading value) loading,
    required TResult Function(CatalogPokemonStateSuccess value) success,
    required TResult Function(CatalogPokemonStateError value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogPokemonStateLoading value)? loading,
    TResult? Function(CatalogPokemonStateSuccess value)? success,
    TResult? Function(CatalogPokemonStateError value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogPokemonStateLoading value)? loading,
    TResult Function(CatalogPokemonStateSuccess value)? success,
    TResult Function(CatalogPokemonStateError value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CatalogPokemonStateSuccess implements CatalogPokemonState {
  const factory CatalogPokemonStateSuccess(
      {required final List<PokemonEntity> pokemons,
      required final int page}) = _$CatalogPokemonStateSuccessImpl;

  @override
  List<PokemonEntity> get pokemons;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$CatalogPokemonStateSuccessImplCopyWith<_$CatalogPokemonStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CatalogPokemonStateErrorImplCopyWith<$Res>
    implements $CatalogPokemonStateCopyWith<$Res> {
  factory _$$CatalogPokemonStateErrorImplCopyWith(
          _$CatalogPokemonStateErrorImpl value,
          $Res Function(_$CatalogPokemonStateErrorImpl) then) =
      __$$CatalogPokemonStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonEntity> pokemons, int page, String message});
}

/// @nodoc
class __$$CatalogPokemonStateErrorImplCopyWithImpl<$Res>
    extends _$CatalogPokemonStateCopyWithImpl<$Res,
        _$CatalogPokemonStateErrorImpl>
    implements _$$CatalogPokemonStateErrorImplCopyWith<$Res> {
  __$$CatalogPokemonStateErrorImplCopyWithImpl(
      _$CatalogPokemonStateErrorImpl _value,
      $Res Function(_$CatalogPokemonStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? page = null,
    Object? message = null,
  }) {
    return _then(_$CatalogPokemonStateErrorImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatalogPokemonStateErrorImpl implements CatalogPokemonStateError {
  const _$CatalogPokemonStateErrorImpl(
      {required final List<PokemonEntity> pokemons,
      required this.page,
      required this.message})
      : _pokemons = pokemons;

  final List<PokemonEntity> _pokemons;
  @override
  List<PokemonEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  final int page;
  @override
  final String message;

  @override
  String toString() {
    return 'CatalogPokemonState.failure(pokemons: $pokemons, page: $page, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogPokemonStateErrorImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pokemons), page, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogPokemonStateErrorImplCopyWith<_$CatalogPokemonStateErrorImpl>
      get copyWith => __$$CatalogPokemonStateErrorImplCopyWithImpl<
          _$CatalogPokemonStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PokemonEntity> pokemons, int page) loading,
    required TResult Function(List<PokemonEntity> pokemons, int page) success,
    required TResult Function(
            List<PokemonEntity> pokemons, int page, String message)
        failure,
  }) {
    return failure(pokemons, page, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult? Function(List<PokemonEntity> pokemons, int page)? success,
    TResult? Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
  }) {
    return failure?.call(pokemons, page, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PokemonEntity> pokemons, int page)? loading,
    TResult Function(List<PokemonEntity> pokemons, int page)? success,
    TResult Function(List<PokemonEntity> pokemons, int page, String message)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(pokemons, page, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogPokemonStateLoading value) loading,
    required TResult Function(CatalogPokemonStateSuccess value) success,
    required TResult Function(CatalogPokemonStateError value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogPokemonStateLoading value)? loading,
    TResult? Function(CatalogPokemonStateSuccess value)? success,
    TResult? Function(CatalogPokemonStateError value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogPokemonStateLoading value)? loading,
    TResult Function(CatalogPokemonStateSuccess value)? success,
    TResult Function(CatalogPokemonStateError value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CatalogPokemonStateError implements CatalogPokemonState {
  const factory CatalogPokemonStateError(
      {required final List<PokemonEntity> pokemons,
      required final int page,
      required final String message}) = _$CatalogPokemonStateErrorImpl;

  @override
  List<PokemonEntity> get pokemons;
  @override
  int get page;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CatalogPokemonStateErrorImplCopyWith<_$CatalogPokemonStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
