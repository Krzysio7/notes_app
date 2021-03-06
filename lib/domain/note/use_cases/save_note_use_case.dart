import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/note_failure.dart';
import 'package:notes_app/domain/note/repository/note_repository.dart';

@injectable
class SaveNoteUseCase {
  const SaveNoteUseCase(this._noteRepository);

  final NoteRepository _noteRepository;

  Future<Either<NoteFailure, Unit>> call(Note note) async =>
      _noteRepository.insertNote(note);
}
