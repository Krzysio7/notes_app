// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      id: json['id'] as int?,
      content: json['content'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'creationDate': instance.creationDate.toIso8601String(),
    };
