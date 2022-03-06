import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/use_cases/save_note_use_case.dart';
import 'package:notes_app/presentation/core/shared.dart';

part 'add_note_cubit.freezed.dart';
part 'add_note_state.dart';

@injectable
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit(
    this._saveNoteUseCase,
  ) : super(const AddNoteState.idle());

  final SaveNoteUseCase _saveNoteUseCase;

  Future<void> saveNote(String content) async {
    emit(const AddNoteState.loading());
    (await _saveNoteUseCase.call(
      Note(
        content: content,
        creationDate: DateTime.now(),
        id: null,
      ),
    ))
        .fold(
      _handleError,
      (r) => emit(const AddNoteState.success()),
    );
  }

  void _handleError(Exception e) {
    emit(AddNoteState.error(e.toString()));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    emit(AddNoteState.error(local.unexpected));
  }
}
