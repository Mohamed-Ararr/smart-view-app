import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'phone_state.dart';

class PhoneCubit extends Cubit<PhoneState> {
  PhoneCubit() : super(PhoneInitial());
}
