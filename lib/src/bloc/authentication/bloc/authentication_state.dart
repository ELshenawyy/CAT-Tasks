part of 'authentication_bloc.dart';



abstract class AuthenticationState extends Equatable{

}
class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object?> get props => [];
}
class StateAuthSuccessful extends AuthenticationState {
  @override
  List<Object?> get props => [];
}
class StateAuthLoading extends AuthenticationState {
  @override
  List<Object?> get props => [];
}
class StateAuthError extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

