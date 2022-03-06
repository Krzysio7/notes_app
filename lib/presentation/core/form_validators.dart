import 'package:form_field_validator/form_field_validator.dart';
import 'package:notes_app/presentation/core/shared.dart';

MinLengthValidator minLength(int value) => MinLengthValidator(
      value,
      errorText: local.validatorMinLength(value),
    );
