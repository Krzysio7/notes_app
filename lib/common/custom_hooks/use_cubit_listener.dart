import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef CubitBuilderCondition<State> = bool Function(State current);
typedef CubitListener<State, BuildContext> = void Function(
    State current, BuildContext context);

bool defaultBuildWhen<State>(State s) => true;

State? useCubitBuilder<Bloc extends Cubit<dynamic>, State>(
  Cubit<State> bloc, {
  CubitBuilderCondition<State>? buildWhen,
}) {
  final buildWhenConditioner = buildWhen ?? defaultBuildWhen;
  final state =
      useMemoized(() => bloc.stream.where(buildWhenConditioner), [bloc.state]);

  return useStream(state, initialData: bloc.state).data;
}

void useCubitListener<Bloc extends Cubit<dynamic>, State>(
  Cubit<State> bloc,
  CubitListener<State, BuildContext> listener, {
  CubitBuilderCondition<State>? listenWhen,
}) {
  final BuildContext context = useContext();
  final listenWhenConditioner = listenWhen ?? defaultBuildWhen;

  useMemoized(() {
    final stream = bloc.stream
        .where(listenWhenConditioner)
        .listen((state) => listener(state, context));
    return stream.cancel;
  }, [bloc]);
}
