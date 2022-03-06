// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/note/repository/note_repository.dart' as _i5;
import '../domain/note/use_cases/get_notes_list_use_case.dart' as _i9;
import '../domain/note/use_cases/save_note_use_case.dart' as _i7;
import '../infrastructure/note/data_source/note_local_data_source.dart' as _i3;
import '../infrastructure/note/data_source/note_local_data_source_impl.dart'
    as _i4;
import '../infrastructure/note/repository/note_repository_impl.dart' as _i6;
import '../presentation/add_note/add_note_cubit.dart' as _i8;
import '../presentation/home/home_cubit.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.NoteLocalDataSource>(() => _i4.NoteLocalDataSourceImpl());
  gh.factory<_i5.NoteRepository>(
      () => _i6.NoteRepositoryImpl(get<_i3.NoteLocalDataSource>()));
  gh.factory<_i7.SaveNoteUseCase>(
      () => _i7.SaveNoteUseCase(get<_i5.NoteRepository>()));
  gh.factory<_i8.AddNoteCubit>(
      () => _i8.AddNoteCubit(get<_i7.SaveNoteUseCase>()));
  gh.factory<_i9.GetNotesListUseCase>(
      () => _i9.GetNotesListUseCase(get<_i5.NoteRepository>()));
  gh.factory<_i10.HomeCubit>(
      () => _i10.HomeCubit(get<_i9.GetNotesListUseCase>()));
  return get;
}
