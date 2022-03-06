part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeStateLoading;

  const factory HomeState.loaded(List<Note> notes) = HomeStateLoaded;

  const factory HomeState.error(String message) = HomeStatError;
}
