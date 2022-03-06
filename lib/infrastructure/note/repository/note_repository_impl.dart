import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/note_failure.dart';
import 'package:notes_app/domain/note/repository/note_repository.dart';
import 'package:notes_app/infrastructure/note/data_source/note_local_data_source.dart';
import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

@Injectable(as: NoteRepository)
class NoteRepositoryImpl implements NoteRepository {
  NoteRepositoryImpl(
    this._noteLocalDataSource,
  );

  final NoteLocalDataSource _noteLocalDataSource;

  @override
  Future<Either<NoteFailure, List<Note>>> getNotesList() async {
    try {
      return Right((await _noteLocalDataSource.getNotesList()).entities);
    } on HiveError catch (_) {
      return const Left(NoteFailure.unexpectedHiveError());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> insertNote(Note note) async {
    try {
      await _noteLocalDataSource.insertNote(note.dto);
      return const Right(unit);
    } on HiveError catch (_) {
      return const Left(NoteFailure.unexpectedHiveError());
    }
  }
}
