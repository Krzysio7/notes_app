import 'package:hive/hive.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

part 'note_table.g.dart';

@HiveType(adapterName: 'NoteTableAdapter', typeId: 0)
class NoteTable {
  NoteTable({
    required this.id,
    required this.content,
    required this.creationDate,
  });

  factory NoteTable.fromDto(NoteDto dto) => NoteTable(
        id: dto.id,
        content: dto.content,
        creationDate: dto.creationDate,
      );

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String content;

  @HiveField(2)
  final DateTime creationDate;

  static NoteDto toDto(NoteTable table) => NoteDto(
        id: table.id,
        content: table.content,
        creationDate: table.creationDate,
      );
}
