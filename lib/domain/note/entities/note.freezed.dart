// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {required int? id,
      required String content,
      required DateTime creationDate}) {
    return _Note(
      id: id,
      content: content,
      creationDate: creationDate,
    );
  }

  Note fromJson(Map<String, Object?> json) {
    return Note.fromJson(json);
  }
}

/// @nodoc
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  int? get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
  $Res call({int? id, String content, DateTime creationDate});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$NoteCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$NoteCopyWith(_Note value, $Res Function(_Note) then) =
      __$NoteCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String content, DateTime creationDate});
}

/// @nodoc
class __$NoteCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements _$NoteCopyWith<$Res> {
  __$NoteCopyWithImpl(_Note _value, $Res Function(_Note) _then)
      : super(_value, (v) => _then(v as _Note));

  @override
  _Note get _value => super._value as _Note;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_Note(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Note extends _Note {
  const _$_Note(
      {required this.id, required this.content, required this.creationDate})
      : super._();

  factory _$_Note.fromJson(Map<String, dynamic> json) => _$$_NoteFromJson(json);

  @override
  final int? id;
  @override
  final String content;
  @override
  final DateTime creationDate;

  @override
  String toString() {
    return 'Note(id: $id, content: $content, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Note &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(creationDate));

  @JsonKey(ignore: true)
  @override
  _$NoteCopyWith<_Note> get copyWith =>
      __$NoteCopyWithImpl<_Note>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteToJson(this);
  }
}

abstract class _Note extends Note {
  const factory _Note(
      {required int? id,
      required String content,
      required DateTime creationDate}) = _$_Note;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$_Note.fromJson;

  @override
  int? get id;
  @override
  String get content;
  @override
  DateTime get creationDate;
  @override
  @JsonKey(ignore: true)
  _$NoteCopyWith<_Note> get copyWith => throw _privateConstructorUsedError;
}
