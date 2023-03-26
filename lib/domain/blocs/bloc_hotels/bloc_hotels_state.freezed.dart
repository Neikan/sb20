// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_hotels_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocHotelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiHotel> hotels) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiHotel> hotels)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiHotel> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocHotelsStateLoading value) loading,
    required TResult Function(BlocHotelsStateLoaded value) loaded,
    required TResult Function(BlocHotelsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelsStateLoading value)? loading,
    TResult? Function(BlocHotelsStateLoaded value)? loaded,
    TResult? Function(BlocHotelsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelsStateLoading value)? loading,
    TResult Function(BlocHotelsStateLoaded value)? loaded,
    TResult Function(BlocHotelsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocHotelsStateCopyWith<$Res> {
  factory $BlocHotelsStateCopyWith(
          BlocHotelsState value, $Res Function(BlocHotelsState) then) =
      _$BlocHotelsStateCopyWithImpl<$Res, BlocHotelsState>;
}

/// @nodoc
class _$BlocHotelsStateCopyWithImpl<$Res, $Val extends BlocHotelsState>
    implements $BlocHotelsStateCopyWith<$Res> {
  _$BlocHotelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocHotelsStateLoadingCopyWith<$Res> {
  factory _$$BlocHotelsStateLoadingCopyWith(_$BlocHotelsStateLoading value,
          $Res Function(_$BlocHotelsStateLoading) then) =
      __$$BlocHotelsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocHotelsStateLoadingCopyWithImpl<$Res>
    extends _$BlocHotelsStateCopyWithImpl<$Res, _$BlocHotelsStateLoading>
    implements _$$BlocHotelsStateLoadingCopyWith<$Res> {
  __$$BlocHotelsStateLoadingCopyWithImpl(_$BlocHotelsStateLoading _value,
      $Res Function(_$BlocHotelsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocHotelsStateLoading implements BlocHotelsStateLoading {
  const _$BlocHotelsStateLoading();

  @override
  String toString() {
    return 'BlocHotelsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocHotelsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiHotel> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiHotel> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiHotel> hotels)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(BlocHotelsStateLoading value) loading,
    required TResult Function(BlocHotelsStateLoaded value) loaded,
    required TResult Function(BlocHotelsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelsStateLoading value)? loading,
    TResult? Function(BlocHotelsStateLoaded value)? loaded,
    TResult? Function(BlocHotelsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelsStateLoading value)? loading,
    TResult Function(BlocHotelsStateLoaded value)? loaded,
    TResult Function(BlocHotelsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocHotelsStateLoading implements BlocHotelsState {
  const factory BlocHotelsStateLoading() = _$BlocHotelsStateLoading;
}

/// @nodoc
abstract class _$$BlocHotelsStateLoadedCopyWith<$Res> {
  factory _$$BlocHotelsStateLoadedCopyWith(_$BlocHotelsStateLoaded value,
          $Res Function(_$BlocHotelsStateLoaded) then) =
      __$$BlocHotelsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApiHotel> hotels});
}

/// @nodoc
class __$$BlocHotelsStateLoadedCopyWithImpl<$Res>
    extends _$BlocHotelsStateCopyWithImpl<$Res, _$BlocHotelsStateLoaded>
    implements _$$BlocHotelsStateLoadedCopyWith<$Res> {
  __$$BlocHotelsStateLoadedCopyWithImpl(_$BlocHotelsStateLoaded _value,
      $Res Function(_$BlocHotelsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
  }) {
    return _then(_$BlocHotelsStateLoaded(
      null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<ApiHotel>,
    ));
  }
}

/// @nodoc

class _$BlocHotelsStateLoaded implements BlocHotelsStateLoaded {
  const _$BlocHotelsStateLoaded(final List<ApiHotel> hotels) : _hotels = hotels;

  final List<ApiHotel> _hotels;
  @override
  List<ApiHotel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'BlocHotelsState.loaded(hotels: $hotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocHotelsStateLoaded &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocHotelsStateLoadedCopyWith<_$BlocHotelsStateLoaded> get copyWith =>
      __$$BlocHotelsStateLoadedCopyWithImpl<_$BlocHotelsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiHotel> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(hotels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiHotel> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(hotels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiHotel> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hotels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocHotelsStateLoading value) loading,
    required TResult Function(BlocHotelsStateLoaded value) loaded,
    required TResult Function(BlocHotelsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelsStateLoading value)? loading,
    TResult? Function(BlocHotelsStateLoaded value)? loaded,
    TResult? Function(BlocHotelsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelsStateLoading value)? loading,
    TResult Function(BlocHotelsStateLoaded value)? loaded,
    TResult Function(BlocHotelsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocHotelsStateLoaded implements BlocHotelsState {
  const factory BlocHotelsStateLoaded(final List<ApiHotel> hotels) =
      _$BlocHotelsStateLoaded;

  List<ApiHotel> get hotels;
  @JsonKey(ignore: true)
  _$$BlocHotelsStateLoadedCopyWith<_$BlocHotelsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocHotelsStateErrorCopyWith<$Res> {
  factory _$$BlocHotelsStateErrorCopyWith(_$BlocHotelsStateError value,
          $Res Function(_$BlocHotelsStateError) then) =
      __$$BlocHotelsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocHotelsStateErrorCopyWithImpl<$Res>
    extends _$BlocHotelsStateCopyWithImpl<$Res, _$BlocHotelsStateError>
    implements _$$BlocHotelsStateErrorCopyWith<$Res> {
  __$$BlocHotelsStateErrorCopyWithImpl(_$BlocHotelsStateError _value,
      $Res Function(_$BlocHotelsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocHotelsStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocHotelsStateError implements BlocHotelsStateError {
  const _$BlocHotelsStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocHotelsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocHotelsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocHotelsStateErrorCopyWith<_$BlocHotelsStateError> get copyWith =>
      __$$BlocHotelsStateErrorCopyWithImpl<_$BlocHotelsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiHotel> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiHotel> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiHotel> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocHotelsStateLoading value) loading,
    required TResult Function(BlocHotelsStateLoaded value) loaded,
    required TResult Function(BlocHotelsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelsStateLoading value)? loading,
    TResult? Function(BlocHotelsStateLoaded value)? loaded,
    TResult? Function(BlocHotelsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelsStateLoading value)? loading,
    TResult Function(BlocHotelsStateLoaded value)? loaded,
    TResult Function(BlocHotelsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocHotelsStateError implements BlocHotelsState {
  const factory BlocHotelsStateError(final String error) =
      _$BlocHotelsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocHotelsStateErrorCopyWith<_$BlocHotelsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
