part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable{
}

class EventAuthenticationSuccessful extends AuthenticationEvent{
  @override
  List<Object?> get props =>[];

}
class EventLogin extends AuthenticationEvent{

  final String code ;
  final String password ;
  EventLogin({required this.code,required this.password});
  @override
  List<Object?> get props =>[code,password];

}
class EventAuthenticationError extends AuthenticationEvent{
  @override
  List<Object?> get props => throw UnimplementedError();

}



