import 'dart:async';

import 'package:notes_app/infrastructure/core/data_source/local/hive_local_data_source_proxy.dart';
import 'package:notes_app/infrastructure/core/data_source/local/hive_type_constants.dart';
import 'package:notes_app/infrastructure/core/data_source/local/type_adapters/note_table.dart';
import 'package:notes_app/infrastructure/note/data_source/note_local_data_source.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

class NoteLocalDataSourceImpl
    extends HiveLocalDataSourceProxy<NoteTable, NoteDto>
    implements NoteLocalDataSource {
  NoteLocalDataSourceImpl()
      : super(
          boxName: noteTableName,
          adapterToRegister: NoteTableAdapter(),
        );

  @override
  Future<List<NoteDto>> getFormattedData() async {
    final List<NoteTable> data = await getAll();
    return data.map(NoteTable.toDto).toList();
  }

  Future<void> insertOrUpdateItem(NoteDto note) async {
    await put(note.id, NoteTable.fromDto(note));
  }

  @override
  Future<void> insertOrUpdateAll(List<NoteDto> data) async {
    final Map<String, NoteTable> todoMap = {
      for (final note in data) note.id: NoteTable.fromDto(note)
    };
    await putAll(todoMap);
  }

  @override
  Future<void> insertNote(NoteDto note) async {
    return insertOrUpdateItem(note);
  }
}
