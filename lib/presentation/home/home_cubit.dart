import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/domain/note/entities/note.dart';
import 'package:notes_app/domain/note/use_cases/get_notes_list_use_case.dart';
import 'package:notes_app/presentation/core/shared.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getNotesListUseCase,
  ) : super(const HomeState.loading());

  final GetNotesListUseCase _getNotesListUseCase;

  Future<void> fetchNotes() async {
    (await _getNotesListUseCase.call()).fold(
      _handleError,
      (notes) => emit(
        HomeState.loaded(notes),
      ),
    );
  }

  void _handleError(Exception e) {
    emit(HomeState.error(e.toString()));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    emit(HomeState.error(local.unexpected));
  }
}

// class MockHomeCubit extends HomeCubit<HomeState> implements HomeCubit {}
