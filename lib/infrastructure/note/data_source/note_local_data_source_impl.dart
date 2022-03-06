import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:notes_app/infrastructure/core/data_source/local/hive_local_data_source_proxy.dart';
import 'package:notes_app/infrastructure/core/data_source/local/hive_type_constants.dart';
import 'package:notes_app/infrastructure/core/data_source/local/type_adapters/note_table.dart';
import 'package:notes_app/infrastructure/note/data_source/note_local_data_source.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

@Injectable(as: NoteLocalDataSource)
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
    await add(NoteTable.fromDto(note));
  }

  @override
  Future<void> insertOrUpdateAll(List<NoteDto> data) async {
    await addAll(NoteTable.fromDtoList(data));
  }

  @override
  Future<void> insertNote(NoteDto note) async => insertOrUpdateItem(note);

  @override
  Future<List<NoteDto>> getNotesList() => getFormattedData();
}
