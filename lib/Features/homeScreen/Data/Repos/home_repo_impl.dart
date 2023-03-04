import 'package:dio/dio.dart';
import 'package:smartviewapp/Core/apiService.dart';
import 'package:smartviewapp/Core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:smartviewapp/Features/homeScreen/Data/Repos/home_repo.dart';

import '../Models/phone_model/phone_model/phone_model.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<PhoneModel>>> fetchPhones() async {
    try {
      var data = await apiService.get(endPoint: "smartphones?populate=*");
      List<PhoneModel> phoneList = [];

      for (var item in data["data"]) {
        phoneList.add(PhoneModel.fromJson(item));
      }
      return right(phoneList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure(e.message!));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
