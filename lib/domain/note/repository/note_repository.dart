import 'package:dartz/dartz.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/note_failure.dart';

abstract class NoteRepository {
  Future<Either<NoteFailure,Unit>> insertNote(Note note);
  Future<Either<NoteFailure,List<Note>>> getNotesList();
}
