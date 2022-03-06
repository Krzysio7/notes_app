import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureInjection() {
  $initGetIt(getIt, environment: Environment.prod);
}

T inject<T extends Object>(
        {String? instanceName, dynamic param1, dynamic param2}) =>
    getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
