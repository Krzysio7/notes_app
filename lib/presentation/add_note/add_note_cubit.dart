import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_note_cubit.freezed.dart';
part 'add_note_state.dart';

@injectable
class LoadingCubit extends Cubit<AddNoteState> {
  // final IsUserSignedInUseCase _isUserSignedInUseCase;
  // final GetBoardsListUseCase _getBoardsListUseCase;

  LoadingCubit(
    // this._isUserSignedInUseCase,
  ) : super(const AddNoteState.idle());

  void saveNote() {
    try {
      //TODO save
      emit(const AddNoteState.success());
    } catch (exp) {
      _handleError(exp as Exception);
    }
  }

  void _handleError(Exception e) {
    emit(AddNoteState.error(exception: e));
  }
}
