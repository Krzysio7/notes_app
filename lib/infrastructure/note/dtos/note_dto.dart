import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/common/typedefs.dart';
import 'package:notes_app/domain/note/entities/note.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
class NoteDto with _$NoteDto {
  const factory NoteDto({
    required int? id,
    required String content,
    required DateTime creationDate,
  }) = _NoteDto;

  factory NoteDto.fromJson(JSON json) => _$NoteDtoFromJson(json);

  const NoteDto._();

  Note get entity => Note(
        id: id,
        content: content,
        creationDate: creationDate,
      );
}

extension NoteDtoListExtension on List<NoteDto> {
  List<Note> get entities => map((x) => x.entity).toList(growable: false);
}
