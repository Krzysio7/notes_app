import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/repository/note_repository.dart';

@injectable
class SaveNoteUseCase {
  const SaveNoteUseCase(this._noteRepository);

  final NoteRepository _noteRepository;

  Future<void> call(String note) async => _noteRepository.saveNote(note);
}
