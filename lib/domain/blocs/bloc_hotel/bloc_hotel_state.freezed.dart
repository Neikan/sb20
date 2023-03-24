// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_hotel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocHotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiHotelDetailed hotel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiHotelDetailed hotel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiHotelDetailed hotel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocHotelStateLoading value) loading,
    required TResult Function(BlocHotelStateLoaded value) loaded,
    required TResult Function(BlocHotelStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelStateLoading value)? loading,
    TResult? Function(BlocHotelStateLoaded value)? loaded,
    TResult? Function(BlocHotelStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelStateLoading value)? loading,
    TResult Function(BlocHotelStateLoaded value)? loaded,
    TResult Function(BlocHotelStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocHotelStateCopyWith<$Res> {
  factory $BlocHotelStateCopyWith(
          BlocHotelState value, $Res Function(BlocHotelState) then) =
      _$BlocHotelStateCopyWithImpl<$Res, BlocHotelState>;
}

/// @nodoc
class _$BlocHotelStateCopyWithImpl<$Res, $Val extends BlocHotelState>
    implements $BlocHotelStateCopyWith<$Res> {
  _$BlocHotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocHotelStateLoadingCopyWith<$Res> {
  factory _$$BlocHotelStateLoadingCopyWith(_$BlocHotelStateLoading value,
          $Res Function(_$BlocHotelStateLoading) then) =
      __$$BlocHotelStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocHotelStateLoadingCopyWithImpl<$Res>
    extends _$BlocHotelStateCopyWithImpl<$Res, _$BlocHotelStateLoading>
    implements _$$BlocHotelStateLoadingCopyWith<$Res> {
  __$$BlocHotelStateLoadingCopyWithImpl(_$BlocHotelStateLoading _value,
      $Res Function(_$BlocHotelStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocHotelStateLoading implements BlocHotelStateLoading {
  const _$BlocHotelStateLoading();

  @override
  String toString() {
    return 'BlocHotelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocHotelStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiHotelDetailed hotel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiHotelDetailed hotel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiHotelDetailed hotel)? loaded,
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
    required TResult Function(BlocHotelStateLoading value) loading,
    required TResult Function(BlocHotelStateLoaded value) loaded,
    required TResult Function(BlocHotelStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelStateLoading value)? loading,
    TResult? Function(BlocHotelStateLoaded value)? loaded,
    TResult? Function(BlocHotelStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelStateLoading value)? loading,
    TResult Function(BlocHotelStateLoaded value)? loaded,
    TResult Function(BlocHotelStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocHotelStateLoading implements BlocHotelState {
  const factory BlocHotelStateLoading() = _$BlocHotelStateLoading;
}

/// @nodoc
abstract class _$$BlocHotelStateLoadedCopyWith<$Res> {
  factory _$$BlocHotelStateLoadedCopyWith(_$BlocHotelStateLoaded value,
          $Res Function(_$BlocHotelStateLoaded) then) =
      __$$BlocHotelStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiHotelDetailed hotel});
}

/// @nodoc
class __$$BlocHotelStateLoadedCopyWithImpl<$Res>
    extends _$BlocHotelStateCopyWithImpl<$Res, _$BlocHotelStateLoaded>
    implements _$$BlocHotelStateLoadedCopyWith<$Res> {
  __$$BlocHotelStateLoadedCopyWithImpl(_$BlocHotelStateLoaded _value,
      $Res Function(_$BlocHotelStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$BlocHotelStateLoaded(
      null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as ApiHotelDetailed,
    ));
  }
}

/// @nodoc

class _$BlocHotelStateLoaded implements BlocHotelStateLoaded {
  const _$BlocHotelStateLoaded(this.hotel);

  @override
  final ApiHotelDetailed hotel;

  @override
  String toString() {
    return 'BlocHotelState.loaded(hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocHotelStateLoaded &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocHotelStateLoadedCopyWith<_$BlocHotelStateLoaded> get copyWith =>
      __$$BlocHotelStateLoadedCopyWithImpl<_$BlocHotelStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiHotelDetailed hotel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiHotelDetailed hotel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiHotelDetailed hotel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocHotelStateLoading value) loading,
    required TResult Function(BlocHotelStateLoaded value) loaded,
    required TResult Function(BlocHotelStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelStateLoading value)? loading,
    TResult? Function(BlocHotelStateLoaded value)? loaded,
    TResult? Function(BlocHotelStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelStateLoading value)? loading,
    TResult Function(BlocHotelStateLoaded value)? loaded,
    TResult Function(BlocHotelStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocHotelStateLoaded implements BlocHotelState {
  const factory BlocHotelStateLoaded(final ApiHotelDetailed hotel) =
      _$BlocHotelStateLoaded;

  ApiHotelDetailed get hotel;
  @JsonKey(ignore: true)
  _$$BlocHotelStateLoadedCopyWith<_$BlocHotelStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocHotelStateErrorCopyWith<$Res> {
  factory _$$BlocHotelStateErrorCopyWith(_$BlocHotelStateError value,
          $Res Function(_$BlocHotelStateError) then) =
      __$$BlocHotelStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BlocHotelStateErrorCopyWithImpl<$Res>
    extends _$BlocHotelStateCopyWithImpl<$Res, _$BlocHotelStateError>
    implements _$$BlocHotelStateErrorCopyWith<$Res> {
  __$$BlocHotelStateErrorCopyWithImpl(
      _$BlocHotelStateError _value, $Res Function(_$BlocHotelStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BlocHotelStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocHotelStateError implements BlocHotelStateError {
  const _$BlocHotelStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BlocHotelState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocHotelStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocHotelStateErrorCopyWith<_$BlocHotelStateError> get copyWith =>
      __$$BlocHotelStateErrorCopyWithImpl<_$BlocHotelStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiHotelDetailed hotel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiHotelDetailed hotel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiHotelDetailed hotel)? loaded,
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
    required TResult Function(BlocHotelStateLoading value) loading,
    required TResult Function(BlocHotelStateLoaded value) loaded,
    required TResult Function(BlocHotelStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocHotelStateLoading value)? loading,
    TResult? Function(BlocHotelStateLoaded value)? loaded,
    TResult? Function(BlocHotelStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocHotelStateLoading value)? loading,
    TResult Function(BlocHotelStateLoaded value)? loaded,
    TResult Function(BlocHotelStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocHotelStateError implements BlocHotelState {
  const factory BlocHotelStateError(final String error) = _$BlocHotelStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$BlocHotelStateErrorCopyWith<_$BlocHotelStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
