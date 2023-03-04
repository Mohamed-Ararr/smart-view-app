import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = "https://api.device-specs.io/api/";
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Options opt = Options(
      headers: {
        "Authorization":
            "Bearer 714cb064db14b71aa18deb5c9e48725b806be0aac31ecfc6c42c8a9843d0f6f358e9880a8042247c5b71caa334758101cd2102cc44f9e66f6b23fc362e828bf29e0f8197aab49a7a5db8c51f2a114b6b04890e543051b4f50c49ca39311a306e4d5172c654c167e8b5ad3905aaf77e9c4d653d419bf13d2b42b4f428fe1c81b7",
      },
    );
    Response response = await dio.get(baseUrl, options: opt);
    return response.data;
  }
}
