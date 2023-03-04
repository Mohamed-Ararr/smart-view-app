import 'package:dio/dio.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Models/phone_model/phone_model.dart';
import 'package:smartviewapp/Core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<PhoneModel>>> fetchCategories() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PhoneModel>>> fetchPhones() {
    // TODO: implement fetchPhones
    throw UnimplementedError();
  }
}
