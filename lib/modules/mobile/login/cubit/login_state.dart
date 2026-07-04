part of 'login_cubit.dart';

@immutable
class LoginState extends Equatable {
  const LoginState({this.login = const Idle()});

  final NetworkState<UserResDm> login;

  LoginState copyWith({NetworkState<UserResDm>? login}) {
    return LoginState(login: login ?? this.login);
  }

  @override
  List<Object?> get props => [login];
}
