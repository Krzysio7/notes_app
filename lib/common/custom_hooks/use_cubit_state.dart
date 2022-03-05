import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

State? useCubitState<Bloc extends Cubit<State>, State>() {
  final context = useContext();
  final bloc = BlocProvider.of<Bloc>(context);
  final stream = useMemoized(() => bloc.stream.skip(1), [bloc.state]);

  return useStream(stream, initialData: bloc.state).data;
}
