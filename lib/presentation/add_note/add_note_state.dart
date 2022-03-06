part of 'add_note_cubit.dart';

@freezed
class AddNoteState with _$AddNoteState {
  const factory AddNoteState.idle() = AddNoteStateIdle;

  const factory AddNoteState.loading() = AddNoteStateLoading;

  const factory AddNoteState.success() = AddNoteStateSuccess;

  const factory AddNoteState.error(String message) = AddNoteStateError;
}
