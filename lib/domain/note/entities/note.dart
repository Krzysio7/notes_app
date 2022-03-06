import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/common/typedefs.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required int? id,
    required String content,
    required DateTime creationDate,
  }) = _Note;

  factory Note.fromJson(JSON json) => _$NoteFromJson(json);

  const Note._();

  NoteDto get dto => NoteDto(
        id: id,
        content: content,
        creationDate: creationDate,
      );
}
