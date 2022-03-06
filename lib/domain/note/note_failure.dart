import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/presentation/core/shared.dart';

part 'note_failure.freezed.dart';

@freezed
class NoteFailure with _$NoteFailure implements Exception {
  const factory NoteFailure.unexpectedHiveError() = _UnexpectedHiveError;

  const NoteFailure._();

  String _getErrorMessage() {
    return when(
      unexpectedHiveError: () => local.unexpected,
    );
  }

  @override
  String toString() {
    return _getErrorMessage();
  }
}
