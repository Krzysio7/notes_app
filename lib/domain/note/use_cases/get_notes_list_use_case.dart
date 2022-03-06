import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/note_failure.dart';
import 'package:notes_app/domain/note/repository/note_repository.dart';

@injectable
class GetNotesListUseCase {
  const GetNotesListUseCase(this._noteRepository);

  final NoteRepository _noteRepository;

  Future<Either<NoteFailure, List<Note>>> call() async =>
      _noteRepository.getNotesList();
}
