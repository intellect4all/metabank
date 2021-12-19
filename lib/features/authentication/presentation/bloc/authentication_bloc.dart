import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) {
      // TODO: implement event handler

      if (event is AppStartedEvent) {
        log("App started event received");
        emit(AuthenticationStartedEvent());
      }

      if (event is AppLoadedEvent) {
        log("App loaded event received");
        emit(UnauthenticatedState());
      }
    });
  }
}
