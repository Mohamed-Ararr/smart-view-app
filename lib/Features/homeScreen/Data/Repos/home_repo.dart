import 'package:dartz/dartz.dart';
import 'package:smartviewapp/Core/errors/failure.dart';

import '../Models/phone_model/phone_model/phone_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<PhoneModel>>> fetchPhones();
}
