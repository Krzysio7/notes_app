import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/common/typedefs.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
class NoteDto with _$NoteDto {
  const factory NoteDto({
    required String id,
    required String content,
    required DateTime creationDate,
  }) = _NoteDto;

  factory NoteDto.fromJson(JSON json) => _$NoteDtoFromJson(json);
}
