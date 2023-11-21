import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:supervisor/constants/constants.dart';

part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.init());
}
