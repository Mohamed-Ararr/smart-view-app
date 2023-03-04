part of 'phone_cubit.dart';

abstract class PhoneState extends Equatable {
  const PhoneState();

  @override
  List<Object> get props => [];
}

class PhoneInitial extends PhoneState {}

class PhoneLoading extends PhoneState {}

class PhoneSuccess extends PhoneState {}

class PhoneFailure extends PhoneState {
  final String errorMsg;
  const PhoneFailure(this.errorMsg);
}
