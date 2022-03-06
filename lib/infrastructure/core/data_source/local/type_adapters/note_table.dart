import 'package:hive/hive.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

part 'note_table.g.dart';

@HiveType(adapterName: 'NoteTableAdapter', typeId: 0)
class NoteTable extends HiveObject {
  NoteTable({
    required this.content,
    required this.creationDate,
  });

  factory NoteTable.fromDto(NoteDto dto) => NoteTable(
        content: dto.content,
        creationDate: dto.creationDate,
      );

  @HiveField(0)
  final String content;

  @HiveField(1)
  final DateTime creationDate;

  static NoteDto toDto(NoteTable table) => NoteDto(
        id: table.key as int,
        content: table.content,
        creationDate: table.creationDate,
      );

  static List<NoteTable> fromDtoList(List<NoteDto> dtos) =>
      dtos.map(NoteTable.fromDto).toList(growable: false);
}
