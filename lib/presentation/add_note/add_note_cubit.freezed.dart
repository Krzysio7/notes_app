// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_note_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddNoteStateTearOff {
  const _$AddNoteStateTearOff();

  AddNoteStateIdle idle() {
    return const AddNoteStateIdle();
  }

  AddNoteStateLoading loading() {
    return const AddNoteStateLoading();
  }

  AddNoteStateSuccess success() {
    return const AddNoteStateSuccess();
  }

  AddNoteStateError error({Exception? exception}) {
    return AddNoteStateError(
      exception: exception,
    );
  }
}

/// @nodoc
const $AddNoteState = _$AddNoteStateTearOff();

/// @nodoc
mixin _$AddNoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Exception? exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNoteStateIdle value) idle,
    required TResult Function(AddNoteStateLoading value) loading,
    required TResult Function(AddNoteStateSuccess value) success,
    required TResult Function(AddNoteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res> implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  final AddNoteState _value;
  // ignore: unused_field
  final $Res Function(AddNoteState) _then;
}

/// @nodoc
abstract class $AddNoteStateIdleCopyWith<$Res> {
  factory $AddNoteStateIdleCopyWith(
          AddNoteStateIdle value, $Res Function(AddNoteStateIdle) then) =
      _$AddNoteStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNoteStateIdleCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res>
    implements $AddNoteStateIdleCopyWith<$Res> {
  _$AddNoteStateIdleCopyWithImpl(
      AddNoteStateIdle _value, $Res Function(AddNoteStateIdle) _then)
      : super(_value, (v) => _then(v as AddNoteStateIdle));

  @override
  AddNoteStateIdle get _value => super._value as AddNoteStateIdle;
}

/// @nodoc

class _$AddNoteStateIdle implements AddNoteStateIdle {
  const _$AddNoteStateIdle();

  @override
  String toString() {
    return 'AddNoteState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddNoteStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Exception? exception) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNoteStateIdle value) idle,
    required TResult Function(AddNoteStateLoading value) loading,
    required TResult Function(AddNoteStateSuccess value) success,
    required TResult Function(AddNoteStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AddNoteStateIdle implements AddNoteState {
  const factory AddNoteStateIdle() = _$AddNoteStateIdle;
}

/// @nodoc
abstract class $AddNoteStateLoadingCopyWith<$Res> {
  factory $AddNoteStateLoadingCopyWith(
          AddNoteStateLoading value, $Res Function(AddNoteStateLoading) then) =
      _$AddNoteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNoteStateLoadingCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res>
    implements $AddNoteStateLoadingCopyWith<$Res> {
  _$AddNoteStateLoadingCopyWithImpl(
      AddNoteStateLoading _value, $Res Function(AddNoteStateLoading) _then)
      : super(_value, (v) => _then(v as AddNoteStateLoading));

  @override
  AddNoteStateLoading get _value => super._value as AddNoteStateLoading;
}

/// @nodoc

class _$AddNoteStateLoading implements AddNoteStateLoading {
  const _$AddNoteStateLoading();

  @override
  String toString() {
    return 'AddNoteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddNoteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Exception? exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
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
    required TResult Function(AddNoteStateIdle value) idle,
    required TResult Function(AddNoteStateLoading value) loading,
    required TResult Function(AddNoteStateSuccess value) success,
    required TResult Function(AddNoteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddNoteStateLoading implements AddNoteState {
  const factory AddNoteStateLoading() = _$AddNoteStateLoading;
}

/// @nodoc
abstract class $AddNoteStateSuccessCopyWith<$Res> {
  factory $AddNoteStateSuccessCopyWith(
          AddNoteStateSuccess value, $Res Function(AddNoteStateSuccess) then) =
      _$AddNoteStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNoteStateSuccessCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res>
    implements $AddNoteStateSuccessCopyWith<$Res> {
  _$AddNoteStateSuccessCopyWithImpl(
      AddNoteStateSuccess _value, $Res Function(AddNoteStateSuccess) _then)
      : super(_value, (v) => _then(v as AddNoteStateSuccess));

  @override
  AddNoteStateSuccess get _value => super._value as AddNoteStateSuccess;
}

/// @nodoc

class _$AddNoteStateSuccess implements AddNoteStateSuccess {
  const _$AddNoteStateSuccess();

  @override
  String toString() {
    return 'AddNoteState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddNoteStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Exception? exception) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNoteStateIdle value) idle,
    required TResult Function(AddNoteStateLoading value) loading,
    required TResult Function(AddNoteStateSuccess value) success,
    required TResult Function(AddNoteStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddNoteStateSuccess implements AddNoteState {
  const factory AddNoteStateSuccess() = _$AddNoteStateSuccess;
}

/// @nodoc
abstract class $AddNoteStateErrorCopyWith<$Res> {
  factory $AddNoteStateErrorCopyWith(
          AddNoteStateError value, $Res Function(AddNoteStateError) then) =
      _$AddNoteStateErrorCopyWithImpl<$Res>;
  $Res call({Exception? exception});
}

/// @nodoc
class _$AddNoteStateErrorCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res>
    implements $AddNoteStateErrorCopyWith<$Res> {
  _$AddNoteStateErrorCopyWithImpl(
      AddNoteStateError _value, $Res Function(AddNoteStateError) _then)
      : super(_value, (v) => _then(v as AddNoteStateError));

  @override
  AddNoteStateError get _value => super._value as AddNoteStateError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(AddNoteStateError(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$AddNoteStateError implements AddNoteStateError {
  const _$AddNoteStateError({this.exception});

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'AddNoteState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddNoteStateError &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $AddNoteStateErrorCopyWith<AddNoteStateError> get copyWith =>
      _$AddNoteStateErrorCopyWithImpl<AddNoteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Exception? exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Exception? exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddNoteStateIdle value) idle,
    required TResult Function(AddNoteStateLoading value) loading,
    required TResult Function(AddNoteStateSuccess value) success,
    required TResult Function(AddNoteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddNoteStateIdle value)? idle,
    TResult Function(AddNoteStateLoading value)? loading,
    TResult Function(AddNoteStateSuccess value)? success,
    TResult Function(AddNoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddNoteStateError implements AddNoteState {
  const factory AddNoteStateError({Exception? exception}) = _$AddNoteStateError;

  Exception? get exception;
  @JsonKey(ignore: true)
  $AddNoteStateErrorCopyWith<AddNoteStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
