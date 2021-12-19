import 'package:get_it/get_it.dart';
import 'package:metabank/features/authentication/presentation/bloc/authentication_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => AuthenticationBloc(

        // add use cases here
        ),
  );
}
