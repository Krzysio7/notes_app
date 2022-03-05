import 'package:notes_app/infrastructure/note/dtos/note_dto.dart';

abstract class NoteLocalDataSource {
  Future<void> insertNote(NoteDto note);
}
