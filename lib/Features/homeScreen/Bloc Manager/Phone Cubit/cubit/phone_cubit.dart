import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Repos/home_repo.dart';

import '../../../../../Core/errors/failure.dart';
import '../../../Data/Models/phone_model/phone_model.dart';

part 'phone_state.dart';

class PhoneCubit extends Cubit<PhoneState> {
  final HomeRepo homeRepo;
  PhoneCubit(this.homeRepo) : super(PhoneInitial());

  Future<void> fetchPhones() async {
    emit(PhoneLoading());
    Either<Failure, List<PhoneModel>> result = await homeRepo.fetchPhones();
    result.fold(
      (failure) => PhoneFailure(failure.errorMsg),
      (phones) => PhoneSuccess(phones),
    );
  }
}
