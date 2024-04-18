import 'dart:convert';
import 'dart:html';

import 'package:thuctap/bloc/Login/login_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../rest/login_function.dart';
import '../../utils.dart';
import 'login_state.dart';
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      try {
        final response = await userLogin(event.email.trim(),event.password.trim());
        if (response['success']) {
          yield LoginSuccess('login success');
          } else {
          print(response);
            yield LoginFailure(error: 'login failed, status code: ${response.statusCode}');
          }
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}